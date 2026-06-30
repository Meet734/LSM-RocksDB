## 1. Write-only
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench --benchmarks="fillseq" \
  --num=10000000 --key_size=16 --value_size=100 \
  --db=/tmp/rocksdb_test --disable_wal=false
Set seed to 1782730164857897 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Mon Jun 29 10:49:24 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     100 bytes each (50 bytes after compression)
Entries:    10000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    1106.3 MB (estimated)
FileSize:   629.4 MB (estimated)
Write rate: 0 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
DB path: [/tmp/rocksdb_test]
fillseq      :       1.932 micros/op 517654 ops/sec 19.318 seconds 10000000 operations;   57.3 MB/s
```
---
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench --benchmarks="fillseqdeterministic" \
  --num=10000000 --key_size=16 --value_size=100 \
  --db=/tmp/rocksdb_test \
  --disable_auto_compactions=1
Set seed to 1782750781119690 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Mon Jun 29 16:33:01 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     100 bytes each (50 bytes after compression)
Entries:    10000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    1106.3 MB (estimated)
FileSize:   629.4 MB (estimated)
Write rate: 0 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
DB path: [/tmp/rocksdb_test]
n is too small to fill 7 levels
fillseqdeterministic :       2.232 micros/op 448056 ops/sec 24.774 seconds 11100000 operations;   49.6 MB/s
Fatal error during "fillseqdeterministic": DoDeterministicCompact: n too small
```

```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench --benchmarks="fillseqdeterministic" \
  --num=10000000 --key_size=16 --value_size=100 \
  --db=/tmp/rocksdb_test \
  --disable_auto_compactions=1 \
  --num_levels=3
Set seed to 1782750880819778 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Mon Jun 29 16:34:40 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     100 bytes each (50 bytes after compression)
Entries:    10000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    1106.3 MB (estimated)
FileSize:   629.4 MB (estimated)
Write rate: 0 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
DB path: [/tmp/rocksdb_test]
22. finished 11000000 ops
2
---------------------- DB 0 LSM ---------------------
Level[0]: /000059.sst(size: 5390472 bytes)
Level[1]: /000070.sst - /000070.sst(total size: 63419207 bytes)
Level[2]: /000060.sst - /000069.sst(total size: 644789363 bytes)
fillseqdeterministic :       2.894 micros/op 345564 ops/sec 31.832 seconds 11000000 operations;   38.2 MB/s
```
---
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench --benchmarks="fillrandom" \
  --num=10000000 --key_size=16 --value_size=100 \
  --threads=16 --db=/tmp/rocksdb_test
Set seed to 1782751026368509 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Mon Jun 29 16:37:06 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     100 bytes each (50 bytes after compression)
Entries:    10000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    1106.3 MB (estimated)
FileSize:   629.4 MB (estimated)
Write rate: 0 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
DB path: [/tmp/rocksdb_test]
fillrandom   :     364.738 micros/op 43866 ops/sec 3647.459 seconds 160000000 operations;    4.9 MB/s
```
---
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench --benchmarks="filluniquerandomdeterministic" \
  --num=10000000 --key_size=16 --value_size=100 \
  --threads=1 --db=/tmp/rocksdb_test \
  --disable_auto_compactions=1 \
  --num_levels=3
Set seed to 1782755045878670 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Mon Jun 29 17:44:05 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     100 bytes each (50 bytes after compression)
Entries:    10000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    1106.3 MB (estimated)
FileSize:   629.4 MB (estimated)
Write rate: 0 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
DB path: [/tmp/rocksdb_test]
22. finished 11000000 ops
2
---------------------- DB 0 LSM ---------------------
Level[0]: /000059.sst(size: 5393044 bytes)
Level[1]: /000070.sst - /000070.sst(total size: 63419140 bytes)
Level[2]: /000060.sst - /000069.sst(total size: 644030619 bytes)
filluniquerandomdeterministic :       4.765 micros/op 209877 ops/sec 52.412 seconds 11000000 operations;   23.2 MB/s
```
---
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench --benchmarks="fillsync" \
  --num=1000000 --key_size=16 --value_size=100 \
  --sync=true --db=/tmp/rocksdb_test
Set seed to 1782755147171361 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Mon Jun 29 17:45:47 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     100 bytes each (50 bytes after compression)
Entries:    1000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    110.6 MB (estimated)
FileSize:   62.9 MB (estimated)
Write rate: 0 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
DB path: [/tmp/rocksdb_test]
fillsync     :       4.380 micros/op 228322 ops/sec 4.380 seconds 1000000 operations;   25.3 MB/s (1000 ops)
```
---
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench --benchmarks="fill100K" \
  --num=1000000 --key_size=16 \
  --db=/tmp/rocksdb_test
Set seed to 1782755255120999 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Mon Jun 29 17:47:35 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     100 bytes each (50 bytes after compression)
Entries:    1000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    110.6 MB (estimated)
FileSize:   62.9 MB (estimated)
Write rate: 0 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
DB path: [/tmp/rocksdb_test]
fill100K     :     120.583 micros/op 8293 ops/sec 120.583 seconds 1000000 operations;  791.0 MB/s (1000 ops)
```
---
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench --benchmarks="overwrite" \
  --num=10000000 --key_size=16 --value_size=100 \
  --threads=16 --use_existing_db=1 --db=/tmp/rocksdb_test
Set seed to 1782755427057748 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Mon Jun 29 17:50:27 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     100 bytes each (50 bytes after compression)
Entries:    10000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    1106.3 MB (estimated)
FileSize:   629.4 MB (estimated)
Write rate: 0 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
DB path: [/tmp/rocksdb_test]
overwrite    :     367.352 micros/op 43553 ops/sec 3673.602 seconds 160000000 operations;    4.8 MB/s
```
---
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench --benchmarks="deleteseq" \
  --num=1000000 --use_existing_db=1 --db=/tmp/rocksdb_test
Set seed to 1782759140368612 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Mon Jun 29 18:52:20 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     100 bytes each (50 bytes after compression)
Entries:    1000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    110.6 MB (estimated)
FileSize:   62.9 MB (estimated)
Write rate: 0 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
DB path: [/tmp/rocksdb_test]
deleteseq    :       1.847 micros/op 541293 ops/sec 1.847 seconds 1000000 operations;
```
---
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench --benchmarks="deleterandom" \
  --num=1000000 --use_existing_db=1 --db=/tmp/rocksdb_test
Set seed to 1782759181611792 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Mon Jun 29 18:53:02 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     100 bytes each (50 bytes after compression)
Entries:    1000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    110.6 MB (estimated)
FileSize:   62.9 MB (estimated)
Write rate: 0 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
DB path: [/tmp/rocksdb_test]
deleterandom :       4.463 micros/op 224067 ops/sec 4.463 seconds 1000000 operations;
```
---
### 2. Read-Only
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench --benchmarks="readseq" \
  --num=10000000 --use_existing_db=1 \
  --threads=16 --db=/tmp/rocksdb_test
Set seed to 1782759239466216 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Mon Jun 29 18:54:02 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     100 bytes each (50 bytes after compression)
Entries:    10000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    1106.3 MB (estimated)
FileSize:   629.4 MB (estimated)
Write rate: 0 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
DB path: [/tmp/rocksdb_test]
readseq      :       1.482 micros/op 9839494 ops/sec 14.635 seconds 144000000 operations; 1088.5 MB/s
```
---
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench --benchmarks="readreverse" \
  --num=10000000 --use_existing_db=1 \
  --threads=16 --db=/tmp/rocksdb_test
Set seed to 1782759318488430 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Mon Jun 29 18:55:18 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     100 bytes each (50 bytes after compression)
Entries:    10000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    1106.3 MB (estimated)
FileSize:   629.4 MB (estimated)
Write rate: 0 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
DB path: [/tmp/rocksdb_test]
readreverse  :       1.840 micros/op 8203435 ops/sec 17.554 seconds 144000000 operations;  907.5 MB/s
```
---
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench --benchmarks="readrandom" \
  --num=10000000 --reads=10000000 --use_existing_db=1 \
  --threads=16 --db=/tmp/rocksdb_test
Set seed to 1782759374599180 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Mon Jun 29 18:56:14 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     100 bytes each (50 bytes after compression)
Entries:    10000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    1106.3 MB (estimated)
FileSize:   629.4 MB (estimated)
Write rate: 0 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
DB path: [/tmp/rocksdb_test]
readrandom   :      39.620 micros/op 400045 ops/sec 399.955 seconds 160000000 operations;   39.8 MB/s (8998429 of 10000000 found)
```
---
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench --benchmarks="readmissing" \
  --num=1000000 --use_existing_db=1 \
  --threads=16 --db=/tmp/rocksdb_test
Set seed to 1782759824809519 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Mon Jun 29 19:03:44 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     100 bytes each (50 bytes after compression)
Entries:    1000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    110.6 MB (estimated)
FileSize:   62.9 MB (estimated)
Write rate: 0 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
DB path: [/tmp/rocksdb_test]
readmissing  :      59.360 micros/op 263791 ops/sec 60.654 seconds 16000000 operations; (0 of 1000000 found)
```
---
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench --benchmarks="readtocache" \
  --num=10000000 --use_existing_db=1 \
  --db=/tmp/rocksdb_test
Set seed to 1782759967592719 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Mon Jun 29 19:06:07 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     100 bytes each (50 bytes after compression)
Entries:    10000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    1106.3 MB (estimated)
FileSize:   629.4 MB (estimated)
Write rate: 0 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
DB path: [/tmp/rocksdb_test]
readtocache  :       0.476 micros/op 2102206 ops/sec 4.281 seconds 9000000 operations;  232.6 MB/s
```
---
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench --benchmarks="multireadrandom" \
  --num=5000000 --batch_size=8 --multiread_batched=true \
  --use_existing_db=1 --threads=4 \
  --cache_size=300000000 --db=/tmp/rocksdb_test
Set seed to 1782760525123415 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Mon Jun 29 19:15:25 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     100 bytes each (50 bytes after compression)
Entries:    5000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    553.1 MB (estimated)
FileSize:   314.7 MB (estimated)
Write rate: 0 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
entries_per_batch = 8
DB path: [/tmp/rocksdb_test]
multireadrandom :       9.542 micros/op 407817 ops/sec 49.042 seconds 20000000 operations;   36.1 MB/s (4000950 of 5000000 found)
```
---
### 3. **Mixed Read-Write Workloads**
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench --benchmarks="readwhilewriting" \
  --num=10000000 --use_existing_db=1 \
  --duration=60 --threads=16 \
  --benchmark_write_rate_limit=2097152 \
  --db=/tmp/rocksdb_test
Set seed to 1782760686309553 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Mon Jun 29 19:18:06 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     100 bytes each (50 bytes after compression)
Entries:    10000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    1106.3 MB (estimated)
FileSize:   629.4 MB (estimated)
Write rate: 2097152 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
DB path: [/tmp/rocksdb_test]
readwhilewriting :      62.877 micros/op 254299 ops/sec 60.067 seconds 15274984 operations;   25.4 MB/s (877505 of 969999 found)
```
---
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench --benchmarks="readwhilemerging" \
  --num=10000000 --use_existing_db=1 \
  --threads=16 \
  --benchmark_write_rate_limit=2097152 \
  --db=/tmp/rocksdb_test \
  --merge_operator="put"
Set seed to 1782761060161893 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Mon Jun 29 19:24:20 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     100 bytes each (50 bytes after compression)
Entries:    10000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    1106.3 MB (estimated)
FileSize:   629.4 MB (estimated)
Write rate: 2097152 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
DB path: [/tmp/rocksdb_test]
readwhilemerging :      80.900 micros/op 196345 ops/sec 814.888 seconds 160000000 operations;   20.7 MB/s (9511339 of 10000000 found)
```
---
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench --benchmarks="readrandomwriterandom" \
  --num=10000000 --use_existing_db=1 \
  --threads=16 --readwritepercent=50 \
  --benchmark_write_rate_limit=2097152 \
  --db=/tmp/rocksdb_test
Set seed to 1782761978842888 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Mon Jun 29 19:39:38 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     100 bytes each (50 bytes after compression)
Entries:    10000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    1106.3 MB (estimated)
FileSize:   629.4 MB (estimated)
Write rate: 2097152 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
DB path: [/tmp/rocksdb_test]
Segmentation fault         ./db_bench --benchmarks="readrandomwriterandom" --num=10000000 --use_existing_db=1 --threads=16 --readwritepercent=50 --benchmark_write_rate_limit=2097152 --db=/tmp/rocksdb_test
```
---
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench --benchmarks="updaterandom" \
  --num=10000000 --use_existing_db=1 \
  --threads=16 \
  --benchmark_write_rate_limit=2097152 \
  --db=/tmp/rocksdb_test
Set seed to 1782763124124951 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Mon Jun 29 19:58:44 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     100 bytes each (50 bytes after compression)
Entries:    10000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    1106.3 MB (estimated)
FileSize:   629.4 MB (estimated)
Write rate: 2097152 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
DB path: [/tmp/rocksdb_test]
updaterandom :     886.195 micros/op 18052 ops/sec 8863.029 seconds 160000000 operations;    4.0 MB/s ( updates:10000000 found:10000000)
```
---
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench --benchmarks="seekrandomwhilewriting" \
  --num=10000000 --use_existing_db=1 \
  --threads=16 --seek_nexts=10 \
  --benchmark_write_rate_limit=2097152 \
  --db=/tmp/rocksdb_test
Set seed to 1782792423428780 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Tue Jun 30 04:07:04 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     100 bytes each (50 bytes after compression)
Entries:    10000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    1106.3 MB (estimated)
FileSize:   629.4 MB (estimated)
Write rate: 2097152 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
DB path: [/tmp/rocksdb_test]
seekrandomwhilewriting :     140.035 micros/op 114014 ops/sec 1403.330 seconds 160000000 operations;  141.8 MB/s (10000000 of 10000000 found)
```