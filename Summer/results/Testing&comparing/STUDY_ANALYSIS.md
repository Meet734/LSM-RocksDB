# RocksDB Tuning & Scaling Study — Analysis of Results

*Scope: `Summer/results/` (all sub-folders **except** `Heuristic/`), with emphasis on the most recent batch under `Summer/results/Testing&comparing/` and the follow-up YCSB runs in `Summer/results/ycsb/`. Analysis date: 2026-07-06.*

This document is driven entirely by the raw logs, CSVs and scripts in the repository. Where a result is an artifact or a failed run, that is called out explicitly — several of the "recent" result sets are broken, and understanding *why* they broke is itself one of the most important findings.

---

## 0. TL;DR — the five things that actually happened

1. **The single-scale db_bench parameter sweep (8 M × 1 KB) succeeded and is the cleanest dataset we have.** It gives a consistent ranking of compression, memtable size, background jobs, cache, direct-I/O and compaction style — all measured as **random-read throughput after a random fill**.
2. **The multi-scale db_bench sweep (10 M / 50 M / 100 M) collapsed.** Only the first 10 M/compression_none cell produced a (pathological) number; everything after it is `0` or malformed. The database was on a slow WSL2 `/mnt/d` mount and drowned in compaction stalls (28 GB on disk, **21.5 billion** stall-µs, billions of ms of compaction) before the run died.
3. **Four of the five recent YCSB suites (tuning, durability, direct-I/O, workload, scaling under `ycsb_results_*`) produced ZERO valid data.** Every phase threw `Unrecognized option DBOptions:: bloom_bits / disable_wal / pin_l0_filter_and_index_blocks_in_cache` and reported `Throughput = 0.0`. This is a config-format bug, not a performance result.
4. **The YCSB run that *did* work is `ycsb/run_20260704_183217/`.** It sweeps datasets {1 M, 10 M, 50 M} × workloads {A, B, C, F} × threads {4, 8, 16} and shows the real story: throughput falls ~6× and tail latency rises ~15× from 1 M → 50 M, and thread scaling *inverts* under disk pressure.
5. **Everything in the recent batch is ~10× slower than the earlier baseline** (`.obsidian-vault`), because the recent DBs were placed on `/mnt/d` (WSL2 drvfs) instead of a native Linux filesystem. This single environment change dominates every recent number.

---

## 1. Data inventory — what is trustworthy and what is not

| Result set | Location | Status | Usable? |
|---|---|---|---|
| db_bench single-scale sweep | `rocksdb_research/csv/final_research_results.csv` (+ `logs/*.log`) | Completed cleanly | ✅ **Yes** — primary dataset |
| db_bench multi-scale sweep | `rocksdb_research/csv/master_results.csv`, `rebuilt_results.csv`, `logs/{10M,50M,100M}/` | Collapsed after first cell | ⚠️ Only as *evidence of failure* |
| YCSB tuning matrix | `ycsb_results_20260704_164004/` + `ycsb_summary.csv` | All phases errored, throughput 0.0 | ❌ No |
| YCSB durability suite | `ycsb_results_20260704_165210/` | All phases errored, throughput 0.0 | ❌ No |
| YCSB direct-I/O suite | `ycsb_results_20260704_165817/` | All phases errored, throughput 0.0 | ❌ No |
| YCSB workload suite (cfg1–4) | `ycsb_results_20260704_170341/` | Errored (pin_l0… option) | ❌ No |
| YCSB scaling suite | `ycsb_results_20260704_172215/` | Errored (pin_l0… option) | ❌ No |
| **YCSB scaling (fixed rerun)** | `ycsb/run_20260704_183217/csv/master_results.csv` | Completed | ✅ **Yes** — primary YCSB dataset |
| YCSB rerun (next morning) | `ycsb/run_20260705_085215/` | Header-only, aborted immediately | ❌ No |
| Earlier baseline (db_bench + 1 M/10 M YCSB) | `.obsidian-vault/Benchmark/`, `.obsidian-vault/Results/` | Completed earlier | ✅ Yes — comparison reference |

**Takeaway:** of the ~13 recent result folders, **2 contain real data**. The rest are dominated by two systematic problems — a YCSB options-file incompatibility, and a slow `/mnt/d` storage backend that made large scales infeasible.

---

## 2. db_bench parameter sweep (the good dataset)

**Configuration** (`scripts/run_dbbench_study.sh`): `--benchmarks=fillrandom,readrandom`, `--num=8000000`, `--value_size=1024`, `--threads=16`, base compression `lz4`, `write_buffer_size=64 MB`, `target_file_size_base=64 MB`, `max_background_jobs=4`, `cache_size=1 GB`, DB on `/mnt/d/rocksdb_research/db`, page cache dropped between runs.

> **Important interpretation note.** The metric-extraction code takes `grep "ops/sec" | tail -1`, i.e. the **last** benchmark's throughput. Since each run is `fillrandom` *then* `readrandom`, the `throughput_ops` column in `final_research_results.csv` is **random-read throughput after the random fill**, *not* write throughput. All rankings below are read-side unless stated. `db_size_mb`, `flush_*`, `compaction_*`, `stall_micros` describe the write/compaction path of the preceding fill.

### 2.1 Compression — lz4 is the clear winner

| Variant | Read ops/s | DB size (MB) | Compaction time (ms) |
|---|---|---|---|
| none | 343,232 | **1,419** | 18,190 |
| snappy | 402,191 | 850 | 5,342 |
| **lz4** | **410,341** | **850** | 8,167 |
| zstd | 341,087 | 911 | 8,517 |

**What / why:** lz4 and snappy shrink the on-disk database by **~40 %** (1,419 → 850 MB) *and* read faster than no-compression. That looks paradoxical until you remember reads are I/O-bound: smaller SST files mean more of the working set fits in the block cache / OS page cache, so fewer physical reads. `none` is slowest because its larger files evict cache; `zstd` is slowest-but-one because its heavier decompression costs CPU on every block without shrinking the DB much more than lz4. **Significant difference:** lz4 dominates zstd here — the opposite of what a space-only view would suggest — because at 1 KB values the CPU cost of zstd is not repaid by extra space savings.

### 2.2 Memtable (write_buffer_size) — bigger buffer, fewer flushes, less compaction

| Variant | Read ops/s | DB size (MB) | Flushes | Compaction time (ms) |
|---|---|---|---|---|
| 64 MB | 391,019 | 840 | 128 | 7,662,282* |
| 128 MB | 385,497 | 994 | 64 | 5,305,351* |
| 256 MB | 409,551 | 844 | 31 | 4,264,096* |
| 512 MB | **438,391** | 1,786 | **16** | **2,737,520*** |

*(compaction-time column is dominated by outliers/units in the raw CSV; the **monotonic trend** is what matters, not the absolute magnitude.)*

**What / why:** doubling the memtable roughly **halves the flush count each step** (128 → 64 → 31 → 16) and steadily cuts total compaction work. Larger memtables absorb more overwrites in memory before flushing, so fewer, larger SSTs are produced and less merge work is needed downstream — directly the *write-amplification* lever this project targets. **Caveat:** `memtable_512` ends with a **1,786 MB** DB (2× the others) because the run finished with a large volume of recently-flushed, not-yet-fully-compacted data — a reminder that a bigger memtable defers, but does not remove, compaction, and can inflate transient space amplification.

### 2.3 Background jobs — monotonic gain from parallel compaction

| Variant | Read ops/s |
|---|---|
| bgjobs_2 | 355,103 |
| bgjobs_4 | 409,906 |
| bgjobs_8 | 454,550 |
| bgjobs_16 | **495,149** |

**What / why:** more `max_background_jobs` → more parallel flush/compaction threads → the LSM is kept better-compacted and shallower, so post-fill reads are faster (**+39 % from 2 → 16**). The gain is monotonic here because the fill is 16-threaded and produces compaction debt faster than a small pool can clear it. The cost (higher `flush_time`/`stall_micros` in the CSV) is contention, but on this workload throughput still wins.

### 2.4 Block cache — flat once the working set fits

| Variant | Read ops/s |
|---|---|
| cache_512 | 404,716 |
| cache_1024 | **457,086** |
| cache_2048 | 419,413 |
| cache_4096 | 432,363 |

**What / why:** **non-monotonic = essentially noise.** The compressed DB is ~850 MB, so once the cache reaches ~1 GB the whole dataset is cacheable and further cache does nothing; the 2 GB/4 GB wobble is run-to-run variance plus competition with the OS page cache. **Significant difference vs. the other knobs:** cache size is the *weakest* lever in this sweep — it matters only up to "big enough to hold the working set," after which memtable/bgjobs/compression matter far more.

### 2.5 Direct I/O — a 4.8× read penalty on this storage

| Variant | Read ops/s | Read MB/s (log) |
|---|---|---|
| directio_off | **448,509** | 444.7 |
| directio_on | 92,989 | 92.2 |

**What / why:** enabling `use_direct_reads` + `use_direct_io_for_flush_and_compaction` makes random reads **~4.8× slower** (fill barely changes: 71 k vs 68 k ops/s in the logs). Direct I/O bypasses the OS page cache; on a random-read workload whose ~850 MB DB otherwise sits warm in page cache, that cache *was* the performance. On the WSL2 `/mnt/d` backend, forcing every read to the physical device is punishing. **This is the single most actionable environment finding: on this testbed, the OS page cache — not RocksDB's block cache — carries read performance, and direct I/O must stay OFF.**

### 2.6 Compaction style — Level is the honest default; FIFO's number is a mirage

| Variant | Read ops/s | DB size (MB) | Compaction time (ms) | Keys found |
|---|---|---|---|---|
| level | 443,515 | 860 | 11,065 | all |
| universal | 389,419 | 1,683 | 18,577 | all |
| **fifo** | **4,594,395** | **38** | 0 | **37,220 / 1,000,000** |

**What / why:**
- **Level** — balanced: fully compacted (860 MB), fastest *legitimate* reads.
- **Universal** — trades space for fewer compaction passes but here produces a **2× larger DB** (1,683 MB) and more total compaction time, and reads *slower* than Level. Its space-amplification cost shows plainly.
- **FIFO — do not believe the 4.6 M ops/s.** The log shows `readrandom … 37220 of 1000000 found`: FIFO drops SSTs by age, so ~96 % of the keys were **deleted**. The reads are "fast" only because the bloom filters reject missing keys without touching disk, over a 38 MB stub of a database. FIFO is a data-retention policy, not a durable store, and this row is a textbook example of a benchmark artifact.

**Significant difference:** the three styles are not interchangeable — Level and Universal differ ~2× in space, and FIFO isn't comparable at all. Any adaptive policy that switches compaction *style* (as opposed to *parameters*) would change durability semantics.

---

## 3. Why the multi-scale db_bench sweep failed

`master_results.csv` / `rebuilt_results.csv` were meant to repeat §2 at 10 M / 50 M / 100 M. Reality:

- `10M, compression_none`: throughput **5,107**, DB **28,105 MB (≈28 GB)**, `compaction_time ≈ 3.8 billion ms`, `stall_micros ≈ 21.6 billion`.
- `10M, compression_snappy/lz4/zstd`: malformed tuples like `(34000,3279000)` — the parser captured stall-interval fragments, not a number.
- Every row from `10M, memtable_256` onward: throughput **0**, DB frozen at **55 MB**.

**What / why:** at 10 M × 1 KB × 16 threads the fill generates compaction debt faster than the `/mnt/d` (WSL2 drvfs) disk can absorb it. Write stalls explode (21.6 B µs = *hours* of cumulative stall), the DB balloons to 28 GB of un-merged data, and the run either ran out of disk/time or was killed mid-suite; the 55 MB "DB size" afterwards is just leftover/empty state. **Significant difference vs. §2:** the *only* variable that changed was scale, and the storage backend could not keep up — the study has an effective ceiling around 8–10 M records on this hardware.

---

## 4. Why the recent YCSB suites (`ycsb_results_*`) produced no data

Every phase in the tuning / durability / direct-I/O / workload / scaling suites failed identically at DB open:

```
site.ycsb.DBException: org.rocksdb.RocksDBException:
  Unrecognized option DBOptions:: bloom_bits            (tuning, durability, direct-I/O)
  Unrecognized option DBOptions:: disable_wal           (durability wal_off)
  Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache   (workload, scaling)
[OVERALL], Throughput(ops/sec), 0.0
```

**What / why:** the generated `*_options.ini` files place keys under the wrong section (or use non-DBOption keys) for the **RocksDB JNI 6.2.2** that the YCSB binding loads (`OptionsUtil.loadOptionsFromFile`). `bloom_bits` is a table/BlockBasedTable-factory concept, not a `DBOptions` field; `disable_wal` is a *write*-option, not a DB-open option; `pin_l0_filter_and_index_blocks_in_cache` is a table-factory option. The loader is strict and aborts the whole DB open on the first unknown key. Because the harness recorded `Exit code: 0` (the JVM exited cleanly after printing the stack trace) and the runner kept going, the suite *looked* complete and even emitted `.done_*` markers and a `ycsb_summary.csv` — but every throughput is `0.0`. `ycsb_summary.csv` confirms all 15 tuning cells at `0.0`.

**Significant difference / lesson:** these folders are a false positive — presence of `.done` files and a summary CSV masked a total failure. The corrected run in §5 removes the offending keys (and switches config), which is exactly why it works.

---

## 5. YCSB scaling — the one working recent YCSB run (`ycsb/run_20260704_183217`)

Datasets {1 M, 10 M, 50 M records} × workloads {A = 50/50 R-W, B = 95/5 R-W, C = 100 % read, F = read-modify-write} × threads {4, 8, 16}. Throughput in ops/s; p99 in µs. DB on `/mnt/d/rocksdb_ycsb`.

### 5.1 Throughput vs. scale (selected)

| Workload / threads | 1 M | 10 M | 50 M |
|---|---|---|---|
| A / 4 | 5,751 | 3,506 | 940 |
| A / 16 | 7,829 | 2,965 | 1,111 |
| B / 4 | 10,087 | 5,401 | 1,204 |
| C / 4 | 9,954 | 4,704 | 2,629 |
| C / 16 | 7,030 | 2,428 | 3,627 |
| F / 4 | 6,053 | 3,596 | 4,529 |
| F / 16 | 7,804 | 2,952 | **(missing)** |

### 5.2 Tail latency vs. scale (workload A read p99, µs)

| Threads | 1 M | 10 M | 50 M |
|---|---|---|---|
| 4 | 1,571 | 3,501 | 22,767 |
| 16 | 3,935 | 11,775 | 24,783 |

### Observations

1. **Throughput collapses with dataset size.** Workload A/4 falls **6.1×** (5,751 → 940) from 1 M → 50 M; read p99 rises **14.5×** (1.6 ms → 22.8 ms). As the dataset outgrows RAM, an increasing fraction of reads miss the cache and hit the slow disk, and writes stall behind compaction. This is the LSM read-vs-scale wall the adaptive project is meant to attack.
2. **Thread scaling *inverts* under disk pressure — the most interesting non-obvious result.**
   - 1 M workload A: 4 → 8 → 16 threads **improves** (5,751 → 7,418 → 7,829): data is cached, so the system is CPU-bound and parallelism helps.
   - 10 M workload A: 4 threads (3,506) **beats** 8 (2,584) and 16 (2,965): more threads mean more concurrent random I/O and more compaction contention on a *single* WSL2 disk, so adding threads *hurts*.
   - 50 M workload A: 4 → 16 **recovers slightly** (940 → 1,111): the workload is so disk-bound that extra threads help hide per-request latency again.
   **Significance:** the optimal thread count is workload- and scale-dependent, and on this storage "more threads" is not monotonically better — a clean argument for adaptivity.
3. **Read-only degrades more gracefully than write-mixed.** At 50 M / 16 threads, read-only **C = 3,627** vs. mixed **A = 1,111** (3.3× gap). Writes drag mixed workloads down through compaction and write stalls; pure reads avoid that path. Note C even *rises* from 10 M → 50 M at 16 threads (2,428 → 3,627) — once loading pressure is gone and the DB is fully compacted, read parallelism pays off.
4. **The heaviest cell failed to record.** `50 M / workload F / 16 threads` is blank — the largest dataset, the most write-intensive pattern (read-modify-write), and the highest concurrency together exceeded what the disk/time budget allowed. Consistent with the §3 collapse.
5. **Read-modify-write (F) is oddly *fast* at 50 M** (4,529 at 4 threads, vs A's 940). Most likely an **order/warm-DB artifact**: all workloads share one DB directory (`/mnt/d/rocksdb_ycsb`) and run in the sequence A→B→C→F, so F executes against a more-compacted, warmer database than A did. Treat cross-workload comparisons *within a scale* with caution for this reason.

---

## 6. Cross-comparison with the earlier baseline (`.obsidian-vault`)

The earlier study (documented in `Benchmark/Comparison.md`, `Results/Observations.md`) established, on what was evidently a faster/native filesystem:

- **db_bench read hierarchy:** `readseq` 9.84 M ops/s ≫ `readrandom` 400 k (24.6× gap); `fillseq` 517 k ≫ `fillrandom` 43.9 k (11.8× gap) — sequential vs random is the dominant axis.
- **1 M YCSB (8 threads):** A = 74,267 · B = 148,236 · C = 155,788 · D = 459,770 · E = 24,389 · F = 109,004 ops/s.
- **1 M → 10 M YCSB:** D (read-latest) fell **-60 %** (cache-bound), C/B fell **-14 %**, A actually *rose* +34 %; read latency grew 1.3–2.2×.
- **Cross-tool quirks:** `readrandomwriterandom` **segfaults** in RocksDB 11.6.0 (a real bug worth remembering); YCSB-F beat db_bench `updaterandom` 6× on RMW.

**The significant difference between then and now:**

| | Earlier baseline | Recent batch |
|---|---|---|
| Storage | native FS (fast) | **`/mnt/d` WSL2 drvfs (slow)** |
| 1 M YCSB workload A run | **74,267 ops/s** (8 thr) | **7,418 ops/s** (8 thr) |
| Feasible scale | 1 M–10 M clean | ~8–10 M ceiling; 50 M partial; 100 M failed |
| Direct I/O | not isolated | **4.8× read penalty measured** |

The recent numbers are **~10× lower** almost everywhere. The overwhelmingly likely cause is the **move of the database to `/mnt/d` (a Windows drive surfaced through WSL2's 9p/drvfs layer)**, which is notoriously slow for the small-random-I/O + fsync patterns both db_bench and YCSB generate. This one environment change explains the low absolute throughput, the stall explosions at scale, and the infeasibility of 50 M+. *(Caveat: the earlier baseline's exact `rocksdb.dir` isn't recorded in the vault, so this is the leading explanation rather than a proven one — but `/mnt/d` appears in every recent config and the symptom pattern is classic drvfs.)*

---

## 7. Consolidated key observations

| # | Observation | Why it happens | Significance / vs. other results |
|---|---|---|---|
| 1 | lz4 gives smaller DB **and** faster reads than `none`/`zstd` | Reads are I/O-bound; smaller SSTs → more cache residency; zstd's CPU cost isn't repaid at 1 KB values | Overturns "compress harder for space" intuition on this workload |
| 2 | Larger memtable → 8× fewer flushes, ~3× less compaction | Overwrites absorbed in memory; fewer, larger SSTs | Direct write-amplification lever; but inflates transient space (512 MB → 1,786 MB DB) |
| 3 | More background jobs → monotonic +39 % reads | Faster compaction keeps LSM shallow | Strong, cheap lever vs. weak cache lever |
| 4 | Block cache flat above ~1 GB | Working set (~850 MB) fully cached | Weakest knob in the sweep |
| 5 | Direct I/O = 4.8× slower reads | Bypasses OS page cache that carries reads on `/mnt/d` | Environment-specific but decisive: keep direct I/O OFF here |
| 6 | FIFO "4.6 M ops/s" is fake | 96 % of keys dropped by age; reads hit missing keys | Benchmark-artifact case study; FIFO ≠ durable store |
| 7 | Multi-scale db_bench collapsed at 10 M+ | Compaction debt outran `/mnt/d`; 21.6 B stall-µs, 28 GB | Hard scale ceiling on this hardware |
| 8 | 4/5 recent YCSB suites recorded 0.0 | Options-file keys incompatible with RocksDB JNI 6.2.2 | False-positive `.done`/summary masked total failure |
| 9 | YCSB throughput −6×, p99 +14× from 1 M → 50 M | Working set outgrows RAM; disk + stalls dominate | The core scaling wall the project targets |
| 10 | Thread scaling **inverts** at 10 M (4 > 8 threads) | Single-disk I/O + compaction contention | Optimal concurrency is scale/workload-dependent → argues for adaptivity |
| 11 | Recent batch ~10× slower than baseline | DB moved to `/mnt/d` (WSL2 drvfs) | Dominates every recent absolute number |

---

## 8. Implications for the adaptive-compaction project

The project goal (`Draft/PROBLEM STATEMENT.md`) is a workload-aware compaction policy that cuts write amplification without hurting reads. These results directly inform that:

- **The write-amplification levers are validated and quantified.** `write_buffer_size` (§2.2) and `max_background_jobs` (§2.3) both move flush/compaction volume monotonically — good candidate control variables for an adaptive controller, with clear, measurable feedback signals (flush count, compaction time, stall µs).
- **Read/write tension is real and scale-dependent.** §5 shows read-only workloads degrade gracefully while write-mixed ones stall; an adaptive policy should compact more aggressively under write-heavy phases (accepting transient space) and relax under read-heavy phases — exactly the design in the problem statement.
- **Space amplification must be a first-class metric.** The memtable-512 (1,786 MB) and universal-compaction (1,683 MB) rows show a policy can silently double on-disk size; the controller needs a space guardrail.
- **Compaction *style* switching is off the table for an apples-to-apples study** — FIFO changes durability semantics (§2.6). Stick to *parameter* adaptation (L0 trigger, file sizes, level bytes), consistent with the stated design.

## 9. Recommended fixes before the next run

1. **Move the DB off `/mnt/d`.** Use a native ext4 path inside WSL2 (e.g. `~/rocksdb_data`) or a real Linux/SSD host. This alone should recover ~10× throughput and make 50 M–100 M feasible (§3, §6).
2. **Fix the YCSB options files.** Put table-factory keys (`bloom_bits`, `pin_l0_filter_and_index_blocks_in_cache`) under the correct section for the loaded RocksDB JNI, move `disable_wal` to a *write* option, or pin the JNI version to one that accepts them. Re-run the tuning/durability/direct-I/O/workload suites (§4).
3. **Make the harness fail loudly.** Treat `Throughput == 0.0` or a stack trace in a phase log as a hard error; do **not** write `.done_*` markers or summary rows for failed phases (§4).
4. **Fix the db_bench metric parser.** `grep ops/sec | tail -1` silently reports the *read* benchmark; split fillrandom vs. readrandom into separate columns so the CSV is self-describing (§2 note).
5. **Isolate DB directories per workload** in the YCSB scaling run, or record run order, so cross-workload comparisons at a fixed scale are valid (§5, obs. 5).
6. **Add repetitions + variance.** The cache sweep (§2.4) is within noise; 3× repeats with mean/σ (already planned in the problem statement's methodology) would separate signal from noise.

---

*Sources analysed: `rocksdb_research/csv/final_research_results.csv`, `.../master_results.csv`, `.../rebuilt_results.csv`, `.../logs/*.log`, `.../scripts/run_dbbench_study.sh`; `ycsb_results_2026070*_*/*.md` + `ycsb_summary.csv`; `ycsb/run_20260704_183217/csv/master_results.csv` + checkpoints; `ycsb/run_20260705_085215/`; `.obsidian-vault/Benchmark/Comparison.md`, `.obsidian-vault/Results/Observations.md`, `.obsidian-vault/Draft/PROBLEM STATEMENT.md`.*
