# Tuning & Benchmarking of RocksDB

This project systematically benchmarks Facebook's RocksDB (an LSM tree key-value store) by sweeping six major tuning knobs of compression, memtable size, background jobs, block cache, Direct I/O, and compaction style across four dataset scales (8M, 10M, 50M, 100M records) using `db_bench`, and then validating real world behavior with YCSB workloads (A/B/C/F) across 1M-50M records.

The goal: determine which knobs gives the highest ROI, identify performance trade offs, and derive a production level starting configuration.

---
## Recommended Starting Configuration

```
compression           = lz4
write_buffer_size     = 256 MB
max_background_jobs   = 8-16  (match CPU cores)
block_cache           ≈ working set size  (1 GB for 8M×1KB)
use_direct_reads      = false  (buffered I/O)
compaction_style      = level
```

---

## Knob ROI Ranking (Read Throughput Swing - Best vs Worst @ 8M)

| Priority | Knob                 | Swing | Quick Rule                                         |
| -------- | -------------------- | ----- | -------------------------------------------------- |
| **1**    | Direct I/O toggle    | 382%  | Never bypass OS page cache on cache-backed storage |
| **2**    | Background Jobs 2→16 | 39%   | Free boost match to CPU core count                 |
| **3**    | Compression codec    | 20%   | lz4 default; zstd only if values ≫ 4 KB            |
| **4**    | Compaction style     | 14%   | Level for reads; Universal for write-heavy         |
| **5**    | Memtable size        | 14%   | 256 MB sweet spot; 512 MB = 2× space bloat         |
| **6**    | Block cache size     | 13%   | Size to working set; over-allocation wastes RAM    |

---

## Key Findings

### Parameter Sweeps (db_bench, 8M records, 16 threads)

1. **Compression** → lz4 wins: 410k ops/s, 850 MB DB (40% smaller than none). zstd slowest due to CPU overhead at 1 KB values.
2. **Memtable** → 256 MB sweet spot: 31 flushes (vs 128 at 64 MB), 844 MB DB. 512 MB gives +12% reads but doubles DB size (1,786 MB).
3. **Background Jobs** → +39% monotonic gain (355k→495k) from 2→16 jobs. p99 latency drops 11→8 µs. Strongest "free" lever.
4. **Block Cache** → Saturates at 1 GB (≈working set). 512 MB = cache misses. 2–4 GB = wasted RAM, 0% speed gain.
5. **Direct I/O** → 4.8× read penalty when enabled (448k→93k ops/s). p99 explodes 9→215 µs. **Keep OFF** on WSL2/drvfs.
6. **Compaction** → Level = fastest reads + lowest space amp (860 MB). Universal = 2× space amp (1,683 MB). FIFO = data loss (96% keys dropped).

### Scaling Observations (8M → 100M records)

7. **Throughput decays 3.6×** across all codecs as dataset outgrows OS page cache. Knob rankings remain strictly stable at every scale.
8. **Tail latency triples**: lz4 p99 rises from 10 µs (8M) → 35 µs (100M). Early warning indicator before throughput collapses.
9. **Write stalls explode 44×**: Data grows 12.5× (8M→100M) but stalls grow 44× (54 ms → 2.4 s). Super-linear compaction debt.
10. **Direct I/O penalty persists** across all scales: ~4.8× gap at every dataset size.

### YCSB Workload Findings (1M → 50M, 4-16 threads)

11. **Write-mixed A collapses 6.1×** from 1M to 50M (5,751→940 ops/s). Overwrites trigger compaction debt and stalls.
12. **Read-only C degrades gracefully**: 9,954→2,629 ops/s (only 3.8×). No write stalls.
13. **Thread inversion at 10M**: 4 threads (3,506 ops/s) **beats** 8 threads (2,584 ops/s) due to single-disk I/O thrashing. Optimal thread count is scale-dependent.
14. **Workload F artifact**: Looks fast at 50M because YCSB runs A→B→C→F sequentially on a shared DB; by F's turn the DB is warmed and compacted.

---
## Consolidated Takeaways

| #   | Finding                            | Mechanism                                                       | Actionable Rule                               |
| --- | ---------------------------------- | --------------------------------------------------------------- | --------------------------------------------- |
| 1   | lz4 beats none & zstd              | I/O bound; smaller SSTs fit in OS cache; zstd CPU-heavy at 1 KB | Use lz4 as default compression                |
| 2   | Bigger memtable → 8× fewer flushes | Absorbs overwrites in memory before flush                       | Set to 256 MB (avoid 512 MB 2× space bloat)   |
| 3   | +39% reads with 16 bg jobs         | Parallel compaction keeps LSM tree shallow                      | Set equal to CPU core count                   |
| 4   | Block cache flat above 1 GB        | Entire ~850 MB working set fits in RAM                          | Size to working set; don't over-allocate      |
| 5   | Direct I/O = 4.8× slower reads     | Bypasses OS page cache on WSL2 drvfs                            | Keep Direct I/O OFF (use buffered I/O)        |
| 6   | FIFO "4.6M ops/s" is a mirage      | Drops 96% of keys by age; reads hit empty stub                  | Never use FIFO for durable storage            |
| 7   | Throughput decays −3.6× at 100M    | Working set outgrows RAM; disk seeks dominate                   | Knob rankings remain stable across scale      |
| 8   | YCSB A collapses 6.1× @ 50M        | Write overwrites drive compaction debt & stalls                 | Read only scales well; write mixed hits wall  |
| 9   | Thread scaling inverts at 10M      | 4t beats 8t due to single disk I/O thrashing                    | Use adaptive concurrency based on load        |
| 10  | Write stalls explode 44× at 100M   | Flushes queue behind heavy compaction work                      | Provision background threads & larger buffers |
