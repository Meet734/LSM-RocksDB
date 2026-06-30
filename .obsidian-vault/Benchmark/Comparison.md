## 1. DB_BENCH Results
| Benchmark                     | Category      | Description              | Threads | Entries | μs/op     | ops/sec       | Seconds  | Total Ops | MB/s       | Notes                      |
| ----------------------------- | ------------- | ------------------------ | ------- | ------- | --------- | ------------- | -------- | --------- | ---------- | -------------------------- |
| fillseq                       | Write-Only    | Sequential fill          | 1       | 10M     | 1.932     | **517,654**   | 19.3     | 10M       | 57.3       | WAL enabled                |
| fillseqdeterministic          | Write-Only    | Deterministic seq fill   | 1       | 10M     | 2.894     | 345,564       | 31.8     | 11M       | 38.2       | Auto-compact off, 3 levels |
| fillrandom                    | Write-Only    | Random fill (16 threads) | 16      | 10M     | 364.738   | 43,866        | 3647.5   | 160M      | 4.9        | Very slow (compaction)     |
| filluniquerandomdeterministic | Write-Only    | Unique random fill       | 1       | 10M     | 4.765     | 209,877       | 52.4     | 11M       | 23.2       | Auto-compact off, 3 levels |
| fillsync                      | Write-Only    | Synchronous fill         | 1       | 1M      | 4.380     | 228,322       | 4.4      | 1M        | 25.3       | sync=true                  |
| fill100K                      | Write-Only    | Large values (100KB)     | 1       | 1M      | 120.583   | 8,293         | 120.6    | 1M        | **791.0**  | Large values               |
| overwrite                     | Write-Only    | Overwrite existing       | 16      | 10M     | 367.352   | 43,553        | 3673.6   | 160M      | 4.8        | use\_existing\_db=1        |
| deleteseq                     | Write-Only    | Sequential delete        | 1       | 1M      | 1.847     | **541,293**   | 1.8      | 1M        | -          | use\_existing\_db=1        |
| deleterandom                  | Write-Only    | Random delete            | 1       | 1M      | 4.463     | 224,067       | 4.5      | 1M        | -          | use\_existing\_db=1        |
| **readseq**                   | **Read-Only** | **Sequential read**      | **16**  | **10M** | **1.482** | **9,839,494** | **14.6** | **144M**  | **1088.5** | **FASTEST**                |
| readreverse                   | Read-Only     | Reverse seq read         | 16      | 10M     | 1.840     | 8,203,435     | 17.6     | 144M      | 907.5      | use\_existing\_db=1        |
| readrandom                    | Read-Only     | Random read              | 16      | 10M     | 39.620    | 400,045       | 400.0    | 160M      | 39.8       | 89.98% found               |
| readmissing                   | Read-Only     | Read non-existent        | 16      | 1M      | 59.360    | 263,791       | 60.7     | 16M       | -          | 0% found (expected)        |
| readtocache                   | Read-Only     | Cache warm-up            | 1       | 10M     | 0.476     | 2,102,206     | 4.3      | 9M        | 232.6      | use\_existing\_db=1        |
| multireadrandom               | Read-Only     | Batched multi-read       | 4       | 5M      | 9.542     | 407,817       | 49.0     | 20M       | 36.1       | batch\_size=8              |
| readwhilewriting              | Mixed R-W     | Read under write         | 16      | 10M     | 62.877    | 254,299       | 60.1     | 15.3M     | 25.4       | write\_rate\_limit=2MB/s   |
| readwhilemerging              | Mixed R-W     | Read under merge         | 16      | 10M     | 80.900    | 196,345       | 814.9    | 160M      | 20.7       | merge\_operator=put        |
| **readrandomwriterandom**     | **Mixed R-W** | **Mixed R+W**            | **16**  | **10M** | -         | **CRASHED**   | -        | -         | -          | **Segmentation fault**     |
| updaterandom                  | Mixed R-W     | Read-modify-write        | 16      | 10M     | 886.195   | 18,052        | 8863.0   | 160M      | 4.0        | write\_rate\_limit=2MB/s   |
| seekrandomwhilewriting        | Mixed R-W     | Scan under write         | 16      | 10M     | 140.035   | 114,014       | 1403.3   | 160M      | 141.8      | seek\_nexts=10             |
## 2. YCSB Results
*GC = Garbage Collection - Java Virtual Machine internal operations.*

| Workload     | Description          | Record Count | Threads | Run Time (ms) | **Throughput (ops/s)** | GC Count | GC Time (ms) | GC %  |
| ------------ | -------------------- | ------------ | ------- | ------------- | ---------------------- | -------- | ------------ | ----- |
| **A (Load)** | Insert 1M records    | 1M           | 8       | 9,574         | **104,449.55**         | 63       | 128          | 1.337 |
| A (Run)      | 50% Read, 50% Update | 1M           | 8       | 13,465        | 74,266.62              | 57       | 139          | 1.032 |
| B            | 95% Read, 5% Update  | 1M           | 8       | 6,746         | **148,235.99**         | 30       | 77           | 1.141 |
| C            | 100% Read            | 1M           | 8       | 6,419         | **155,787.51**         | 27       | 65           | 1.013 |
| **D**        | Read Latest + Insert | 1M           | 8       | 2,175         | **459,770.11**         | 23       | 60           | 2.759 |
| E            | Short Ranges (Scan)  | 1M           | 8       | 41,002        | 24,389.05              | 415      | 1,324        | 3.229 |
| F            | Read-Modify-Write    | 1M           | 8       | 9,174         | 109,003.71             | 59       | 122          | 1.330 |
## 3. YCSB Detailed Latency Breakdown (μs)
| Workload | Operation | Count       | Avg       | Min   | **P50** | **P95** | **P99** | Max         |
| -------- | --------- | ----------- | --------- | ----- | ------- | ------- | ------- | ----------- |
| A (Load) | INSERT    | 1,000,000   | 73.20     | 4     | 33      | 276     | 575     | **172,671** |
| A (Run)  | READ      | 499,724     | 53.97     | 1     | 37      | 121     | 348     | 10,719      |
| A (Run)  | UPDATE    | 500,276     | 140.21    | 7     | 67      | 493     | 1,224   | **170,111** |
| B        | READ      | 949,684     | 46.21     | 1     | 36      | 97      | 237     | 11,655      |
| B        | UPDATE    | 50,316      | 83.16     | 8     | 61      | 153     | 533     | 30,239      |
| C        | READ      | 1,000,000   | 46.05     | 1     | 36      | 97      | 205     | 10,695      |
| **D**    | **READ**  | **949,665** | **13.18** | **1** | **4**   | **37**  | **69**  | **15,311**  |
| D        | INSERT    | 50,335      | 40.46     | 5     | 19      | 72      | 385     | 46,783      |
| E        | SCAN      | 949,873     | 335.20    | 6     | 299     | 621     | 999     | 21,071      |
| E        | INSERT    | 50,127      | 55.13     | 8     | 38      | 103     | 265     | 53,791      |
| F        | READ      | 1,000,000   | 37.55     | 1     | 31      | 79      | 175     | 9,191       |
| F        | UPDATE    | 500,051     | 59.02     | 5     | 28      | 144     | 510     | **152,191** |
## 4. Cross-Tool Comparison (Equivalent Workloads)
| Workload Pattern  | db\_bench Benchmark    | db\_bench ops/s | YCSB Workload   | YCSB ops/s  | Good                   |
| ----------------- | ---------------------- | --------------- | --------------- | ----------- | ---------------------- |
| Mixed R-W (50/50) | readrandomwriterandom  | **CRASHED**     | Workload A      | 74,267      | **YCSB** (only option) |
| Read-Modify-Write | updaterandom           | 18,052          | Workload F      | **109,004** | **YCSB (6x faster)**   |
| Read-Heavy (95/5) | readwhilewriting\*     | 254,299         | Workload B      | **148,236** | **db\_bench** (1.7x)   |
| 100% Read         | readrandom             | **400,045**     | Workload C      | 155,788     | **db\_bench** (2.6x)   |
| Scan + Write      | seekrandomwhilewriting | **114,014**     | Workload E      | 24,389      | **db\_bench** (4.7x)   |
| Sequential Write  | fillseq                | **517,654**     | Workload A Load | 104,450     | **db\_bench** (5x)     |

---
---
# Performance based on throughput
### 1. DB_BENCH (Fast to Slow)
| Rank | Benchmark                     | ops/sec     | Category   |
| ---- | ----------------------------- | ----------- | ---------- |
| 1    | readseq                       | 9,839,494   | Read-Only  |
| 2    | readreverse                   | 8,203,435   | Read-Only  |
| 3    | readtocache                   | 2,102,206   | Read-Only  |
| 4    | deleteseq                     | 541,293     | Write-Only |
| 5    | fillseq                       | 517,654     | Write-Only |
| 6    | multireadrandom               | 407,817     | Read-Only  |
| 7    | readrandom                    | 400,045     | Read-Only  |
| 8    | fillseqdeterministic          | 345,564     | Write-Only |
| 9    | readmissing                   | 263,791     | Read-Only  |
| 10   | readwhilewriting              | 254,299     | Mixed R-W  |
| 11   | fillsync                      | 228,322     | Write-Only |
| 12   | deleterandom                  | 224,067     | Write-Only |
| 13   | filluniquerandomdeterministic | 209,877     | Write-Only |
| 14   | readwhilemerging              | 196,345     | Mixed R-W  |
| 15   | seekrandomwhilewriting        | 114,014     | Mixed R-W  |
| 16   | fillrandom                    | 43,866      | Write-Only |
| 17   | overwrite                     | 43,553      | Write-Only |
| 18   | updaterandom                  | 18,052      | Mixed R-W  |
| 19   | fill100K                      | 8,293       | Write-Only |
| -    | readrandomwriterandom         | **CRASHED** | Mixed R-W  |
### 2. YCSB (Fast to Slow)
| Rank | Workload | ops/sec     | Description             |
| ---- | -------- | ----------- | ----------------------- |
| 1    | **D**    | **459,770** | Read Latest (in-memory) |
| 2    | C        | 155,788     | 100% Read               |
| 3    | B        | 148,236     | 95% Read, 5% Update     |
| 4    | F        | 109,004     | Read-Modify-Write       |
| 5    | A (Load) | 104,450     | Bulk Insert             |
| 6    | A (Run)  | 74,267      | 50% Read, 50% Update    |
| 7    | E        | 24,389      | Short Ranges (Scan)     |

---
---
# Observations

### 1. DB_BENCH and 1M YCSB
| Sr. No. | Observation                      | Note                                                           |
| ------- | -------------------------------- | -------------------------------------------------------------- |
| 1       | (Read) **Sequential > Random**   | readseq (9.8M) is **24.6x faster** than readrandom (400K)      |
| 2       | **Random writes are expensive**  | fillrandom (43K) is **11.8x slower** than fillseq (517K)       |
| 3       | **Sync kills throughput**        | fillsync is **2.3x slower** than fillseq                       |
| 4       | **Compaction stalls**            | Max latency spikes to 172ms+ in YCSB (compaction I/O)          |
| 5       | **Scan is slowest YCSB**         | Workload E at 24K ops/s (335 μs/scan)                          |
| 6       | **Latest reads are fastest**     | Workload D at 459K ops/s (13 μs/read)  all in-memory           |
| 7       | **db\_bench is more aggressive** | 16 threads, raw C++ vs YCSB's 8 threads, Java JNI              |
| 8       | **Critical bug found**           | db\_bench `readrandomwriterandom` segfaults in RocksDB 11.6.0  |
| 9       | **GC matters for scans**         | Workload E: 3.2% GC time vs 1.0% for reads                     |
| 10      | **Tail latency is high**         | P99 << Max everywhere - typical of LSM stores under compaction |
### 2. 1M YCSB
| **Workload**   | **Throughput**  | **Read Latency** | **Write Latency** | **Characteristics**                   |
| -------------- | --------------- | ---------------- | ----------------- | ------------------------------------- |
| **A (50/50)**  | 74,267 ops/sec  | 53.97 μs         | 140.21 μs         | Balanced R/W; update cost 2.6x higher |
| **B (95% R)**  | 148,236 ops/sec | 46.21 μs         | 83.16 μs          | Read-heavy; 2x throughput vs A        |
| **C (100% R)** | 155,788 ops/sec | 46.05 μs         | N/A               | Pure read; best throughput            |
| **D (Latest)** | 459,770 ops/sec | 13.18 μs         | 40.46 μs          | Cache-friendly; 6x throughput vs A    |
| **E (Scan)**   | 24,389 ops/sec  | N/A              | 55.13 μs          | **Scan heaviest** - 81% slower than C |
| **F (RMW)**    | 109,004 ops/sec | 37.55 μs         | 59.02 μs          | RMW adds overhead vs pure read        |
### 3. 10M YCSB
| **Workload**       | **Throughput**  | **Read Latency** | **Write Latency** | **Scaling vs 1M**        |
| ------------------ | --------------- | ---------------- | ----------------- | ------------------------ |
| **A (10M, 50/50)** | 99,618 ops/sec  | 69.86 μs         | 783.80 μs         | **Write latency 5.6x ↑** |
| **B (10M, 95% R)** | 127,343 ops/sec | 81.00 μs         | N/A               | Read latency 1.75x ↑     |
#### 4. Scaling Impact (1M → 10M)
| **Workload**   | **1M Throughput** | **10M Throughput** | **Change** | **Read Lat 1M** | **Read Lat 10M** | **Lat Change** |
| -------------- | ----------------- | ------------------ | ---------- | --------------- | ---------------- | -------------- |
| **A (50/50)**  | 74,267            | 99,618             | **+34%**   | 53.97 μs        | 69.86 μs         | **+1.3x**      |
| **B (95% R)**  | 148,236           | 127,343            | **-14%**   | 46.21 μs        | 81.00 μs         | **+1.75x**     |
| **C (100% R)** | 155,788           | 134,508            | **-14%**   | 46.05 μs        | 98.90 μs         | **+2.15x**     |
| **D (Latest)** | 459,770           | 184,788            | **-60%**   | 13.18 μs        | 11.68 μs         | **-0.88x**     |
| **E (Scan)**   | 24,389            | 24,389             | **0%**     | N/A             | N/A              | Same benchmark |
