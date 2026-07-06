### case 1: To see the performance of `fillrandom` against `fillseq`
- Initially it was 11x slower
```shell
./db_bench \
  --benchmarks="fillrandom,overwrite,readwhilewriting" \
  --db="/tmp/rocksdb_test" \
  --wal_dir="/tmp/rocksdb_wal" \
  --num=10000000 \
  --threads=16 \
  --write_buffer_size=134217728 \
  --max_write_buffer_number=8 \
  --min_write_buffer_number_to_merge=2 \
  --allow_concurrent_memtable_write=1 \
  --enable_pipelined_write=1 \
  --unordered_write=0
```

Test 1:
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench \
  --benchmarks="fillrandom,overwrite,readwhilewriting" \
  --db="/tmp/rocksdb_test" \
  --wal_dir="/tmp/rocksdb_wal" \
  --num=10000000 \
  --threads=16 \
  --write_buffer_size=16777216 \
  --max_write_buffer_number=2 \
  --min_write_buffer_number_to_merge=1 \
  --allow_concurrent_memtable_write=1 \
  --enable_pipelined_write=1 \
  --unordered_write=0
Set seed to 1783048910144342 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Fri Jul  3 03:21:50 2026
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
fillrandom   :     308.223 micros/op 51908 ops/sec 3082.345 seconds 160000000 operations;    5.7 MB/s
DB path: [/tmp/rocksdb_test]
overwrite    :     307.200 micros/op 52080 ops/sec 3072.155 seconds 160000000 operations;    5.8 MB/s
DB path: [/tmp/rocksdb_test]
readwhilewriting :     279.594 micros/op 57105 ops/sec 2801.828 seconds 160000000 operations;    6.3 MB/s (10000000 of 10000000 found)
```
Test 2:
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench \
  --benchmarks="fillrandom,overwrite,readwhilewriting" \
  --db="./test_data" \
  --wal_dir="./test_wal" \
  --num=10000000 \
  --threads=16 \
  --write_buffer_size=134217728 \
  --max_write_buffer_number=8 \
  --min_write_buffer_number_to_merge=2 \
  --allow_concurrent_memtable_write=1 \
  --enable_pipelined_write=0 \
  --unordered_write=1
Set seed to 1783058491405089 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Fri Jul  3 06:01:31 2026
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
DB path: [./test_data]
fillrandom   :      27.044 micros/op 590734 ops/sec 270.849 seconds 160000000 operations;   65.4 MB/s
DB path: [./test_data]
overwrite    :      26.674 micros/op 599290 ops/sec 266.982 seconds 160000000 operations;   66.3 MB/s
DB path: [./test_data]
readwhilewriting :      55.685 micros/op 285792 ops/sec 559.846 seconds 160000000 operations;   31.6 MB/s (10000000 of 10000000 found)
```
Test 3:
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench \
  --benchmarks="fillrandom,overwrite,readwhilewriting" \
  --db="/tmp/rocksdb_test" \
  --wal_dir="/tmp/rocksdb_wal" \
  --num=10000000 \
  --threads=16 \
  --write_buffer_size=134217728 \
  --max_write_buffer_number=8 \
  --min_write_buffer_number_to_merge=2 \
  --allow_concurrent_memtable_write=1 \
  --enable_pipelined_write=1 \
  --unordered_write=0
Set seed to 1783062540704166 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Fri Jul  3 07:09:00 2026
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
fillrandom   :     311.938 micros/op 51291 ops/sec 3119.437 seconds 160000000 operations;    5.7 MB/s
DB path: [/tmp/rocksdb_test]
overwrite    :     312.865 micros/op 51139 ops/sec 3128.688 seconds 160000000 operations;    5.7 MB/s
DB path: [/tmp/rocksdb_test]
readwhilewriting :      58.088 micros/op 274641 ops/sec 582.579 seconds 160000000 operations;   30.4 MB/s (10000000 of 10000000 found)
```

### Case 2: Tail latency observation by tweaking L0 compaction parameters
```shell
./db_bench \
  --benchmarks="fillrandom,overwrite,readwhilewriting,readrandom" \
  --db="./test_data" \
  --wal_dir="./test_wal" \
  --num=10000000 \
  --threads=16 \
  --compaction_style=0 \
  --level0_file_num_compaction_trigger=4 \
  --level0_slowdown_writes_trigger=20 \
  --level0_stop_writes_trigger=36 \
  --max_bytes_for_level_base=268435456 \
  --max_bytes_for_level_multiplier=10 \
  --target_file_size_base=67108864 \
  --max_background_jobs=4 \
  --max_subcompactions=1 \
  --statistics=1 \
  --histogram=1
```

Test 1:
```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ ./db_bench \
  --benchmarks="fillrandom,overwrite,readwhilewriting,readrandom" \
  --db="./test_data" \
  --wal_dir="./test_wal" \
  --num=10000000 \
  --threads=16 \
  --compaction_style=0 \
  --level0_file_num_compaction_trigger=4 \
  --level0_slowdown_writes_trigger=20 \
  --level0_stop_writes_trigger=36 \
  --max_bytes_for_level_base=268435456 \
  --max_bytes_for_level_multiplier=10 \
  --target_file_size_base=67108864 \
  --max_background_jobs=4 \
  --subcompactions=1 \
  --statistics=1 \
  --histogram=1
Set seed to 1783070491341374 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
RocksDB:    version 11.6.0
Date:       Fri Jul  3 09:21:31 2026
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
DB path: [./test_data]
fillrandom   :     310.906 micros/op 51459 ops/sec 3109.246 seconds 160000000 operations;    5.7 MB/s
Microseconds per write:
Count: 160000000 Average: 310.9064  StdDev: 120.01
Min: 2  Median: 321.6264  Max: 79254
Percentiles: P50: 321.63 P75: 359.79 P99: 564.27 P99.9: 579.68 P99.99: 1158.28
------------------------------------------------------
(       1,       2 ]      370   0.000%   0.000%
(       2,       3 ]     1504   0.001%   0.001%
(       3,       4 ]     2331   0.001%   0.003%
(       4,       6 ]     4138   0.003%   0.005%
(       6,      10 ]    17133   0.011%   0.016%
(      10,      15 ]   150698   0.094%   0.110%
(      15,      22 ]   614615   0.384%   0.494%
(      22,      34 ]  1145476   0.716%   1.210%
(      34,      51 ]   276453   0.173%   1.383%
(      51,      76 ]    88485   0.055%   1.438%
(      76,     110 ]    45458   0.028%   1.467%
(     110,     170 ]   161017   0.101%   1.567%
(     170,     250 ]  2413759   1.509%   3.076%
(     250,     380 ] 136265597  85.166%  88.242% #################
(     380,     580 ] 18682495  11.677%  99.918% ##
(     580,     870 ]   102093   0.064%  99.982%
(     870,    1300 ]    18463   0.012%  99.994%
(    1300,    1900 ]     3917   0.002%  99.996%
(    1900,    2900 ]     2433   0.002%  99.998%
(    2900,    4400 ]     2439   0.002%  99.999%
(    4400,    6600 ]      545   0.000% 100.000%
(    6600,    9900 ]       60   0.000% 100.000%
(    9900,   14000 ]       88   0.000% 100.000%
(   14000,   22000 ]       33   0.000% 100.000%
(   33000,   50000 ]       32   0.000% 100.000%
(   50000,   75000 ]      336   0.000% 100.000%
(   75000,  110000 ]       32   0.000% 100.000%

DB path: [./test_data]
overwrite    :     312.260 micros/op 51238 ops/sec 3122.673 seconds 160000000 operations;    5.7 MB/s
Microseconds per write:
Count: 160000000 Average: 312.2601  StdDev: 136.16
Min: 2  Median: 322.3495  Max: 87042
Percentiles: P50: 322.35 P75: 359.80 P99: 563.67 P99.9: 579.38 P99.99: 1085.27
------------------------------------------------------
(       1,       2 ]      375   0.000%   0.000%
(       2,       3 ]     1775   0.001%   0.001%
(       3,       4 ]     2325   0.001%   0.003%
(       4,       6 ]     3302   0.002%   0.005%
(       6,      10 ]     3660   0.002%   0.007%
(      10,      15 ]     8683   0.005%   0.013%
(      15,      22 ]    11689   0.007%   0.020%
(      22,      34 ]     8056   0.005%   0.025%
(      34,      51 ]     7080   0.004%   0.029%
(      51,      76 ]     9259   0.006%   0.035%
(      76,     110 ]    14891   0.009%   0.044%
(     110,     170 ]   148121   0.093%   0.137%
(     170,     250 ]  2509082   1.568%   1.705%
(     250,     380 ] 138844440  86.778%  88.483% #################
(     380,     580 ] 18323787  11.452%  99.935% ##
(     580,     870 ]    79933   0.050%  99.985%
(     870,    1300 ]    15065   0.009%  99.995%
(    1300,    1900 ]     2896   0.002%  99.997%
(    1900,    2900 ]     2691   0.002%  99.998%
(    2900,    4400 ]     1746   0.001%  99.999%
(    4400,    6600 ]      385   0.000% 100.000%
(    6600,    9900 ]      107   0.000% 100.000%
(    9900,   14000 ]       41   0.000% 100.000%
(   14000,   22000 ]       49   0.000% 100.000%
(   22000,   33000 ]        2   0.000% 100.000%
(   33000,   50000 ]       32   0.000% 100.000%
(   50000,   75000 ]      480   0.000% 100.000%
(   75000,  110000 ]       48   0.000% 100.000%

DB path: [./test_data]
readwhilewriting :      92.482 micros/op 172663 ops/sec 926.658 seconds 160000000 operations;   19.1 MB/s (10000000 of 10000000 found)

Microseconds per read:
Count: 160000000 Average: 92.4825  StdDev: 403.29
Min: 1  Median: 57.6192  Max: 50475
Percentiles: P50: 57.62 P75: 73.30 P99: 502.93 P99.9: 6260.06 P99.99: 9672.17
------------------------------------------------------
[       0,       1 ]       65   0.000%   0.000%
(       1,       2 ]     4943   0.003%   0.003%
(       2,       3 ]    63658   0.040%   0.043%
(       3,       4 ]   419448   0.262%   0.305%
(       4,       6 ]  2201068   1.376%   1.681%
(       6,      10 ]  2353877   1.471%   3.152%
(      10,      15 ]  1420797   0.888%   4.040%
(      15,      22 ]  6351492   3.970%   8.010% #
(      22,      34 ] 11988205   7.493%  15.502% #
(      34,      51 ] 38306559  23.942%  39.444% #####
(      51,      76 ] 63791033  39.869%  79.313% ########
(      76,     110 ] 28001439  17.501%  96.814% ####
(     110,     170 ]  2641730   1.651%  98.465%
(     170,     250 ]   394953   0.247%  98.712%
(     250,     380 ]   288441   0.180%  98.892%
(     380,     580 ]   280317   0.175%  99.068%
(     580,     870 ]   153857   0.096%  99.164%
(     870,    1300 ]    99152   0.062%  99.226%
(    1300,    1900 ]    89572   0.056%  99.282%
(    1900,    2900 ]   115437   0.072%  99.354%
(    2900,    4400 ]   717397   0.448%  99.802%
(    4400,    6600 ]   185173   0.116%  99.918%
(    6600,    9900 ]   123944   0.077%  99.995%
(    9900,   14000 ]     6393   0.004%  99.999%
(   14000,   22000 ]      851   0.001% 100.000%
(   22000,   33000 ]      165   0.000% 100.000%
(   33000,   50000 ]       33   0.000% 100.000%
(   50000,   75000 ]        1   0.000% 100.000%

DB path: [./test_data]
readrandom   :      62.303 micros/op 255771 ops/sec 625.557 seconds 160000000 operations;   28.3 MB/s (10000000 of 10000000 found)

Microseconds per read:
Count: 160000000 Average: 62.3030  StdDev: 281.81
Min: 1  Median: 44.9338  Max: 39829
Percentiles: P50: 44.93 P75: 57.72 P99: 143.30 P99.9: 4349.32 P99.99: 9114.29
------------------------------------------------------
[       0,       1 ]       59   0.000%   0.000%
(       1,       2 ]     4920   0.003%   0.003%
(       2,       3 ]    69466   0.043%   0.047%
(       3,       4 ]   508741   0.318%   0.364%
(       4,       6 ]  2793240   1.746%   2.110%
(       6,      10 ]  2293222   1.433%   3.544%
(      10,      15 ]  1510316   0.944%   4.487%
(      15,      22 ]  6871519   4.295%   8.782% #
(      22,      34 ] 17098664  10.687%  19.469% ##
(      34,      51 ] 75952173  47.470%  66.939% #########
(      51,      76 ] 47996466  29.998%  96.937% ######
(      76,     110 ]  2998952   1.874%  98.811%
(     110,     170 ]   544587   0.340%  99.151%
(     170,     250 ]   191786   0.120%  99.271%
(     250,     380 ]   165626   0.104%  99.375%
(     380,     580 ]   194553   0.122%  99.496%
(     580,     870 ]   107909   0.067%  99.564%
(     870,    1300 ]    70528   0.044%  99.608%
(    1300,    1900 ]    49188   0.031%  99.639%
(    1900,    2900 ]    60340   0.038%  99.676%
(    2900,    4400 ]   370255   0.231%  99.908%
(    4400,    6600 ]    86258   0.054%  99.962%
(    6600,    9900 ]    59367   0.037%  99.999%
(    9900,   14000 ]     1678   0.001% 100.000%
(   14000,   22000 ]      162   0.000% 100.000%
(   22000,   33000 ]       24   0.000% 100.000%
(   33000,   50000 ]        1   0.000% 100.000%

STATISTICS:
rocksdb.block.cache.miss COUNT : 1156376269
rocksdb.block.cache.hit COUNT : 109178564
rocksdb.block.cache.add COUNT : 1104890410
rocksdb.block.cache.add.failures COUNT : 0
rocksdb.block.cache.index.miss COUNT : 0
rocksdb.block.cache.index.hit COUNT : 0
rocksdb.block.cache.index.add COUNT : 0
rocksdb.block.cache.index.bytes.insert COUNT : 0
rocksdb.block.cache.filter.miss COUNT : 0
rocksdb.block.cache.filter.hit COUNT : 0
rocksdb.block.cache.filter.add COUNT : 0
rocksdb.block.cache.filter.bytes.insert COUNT : 0
rocksdb.block.cache.data.miss COUNT : 1156376269
rocksdb.block.cache.data.hit COUNT : 109178564
rocksdb.block.cache.data.add COUNT : 1104890410
rocksdb.block.cache.data.bytes.insert COUNT : 4543282658960
rocksdb.block.cache.bytes.read COUNT : 448941034272
rocksdb.block.cache.bytes.write COUNT : 4543282658960
rocksdb.block.cache.compression.dict.miss COUNT : 0
rocksdb.block.cache.compression.dict.hit COUNT : 0
rocksdb.block.cache.compression.dict.add COUNT : 0
rocksdb.block.cache.compression.dict.bytes.insert COUNT : 0
rocksdb.block.cache.add.redundant COUNT : 178300
rocksdb.block.cache.index.add.redundant COUNT : 0
rocksdb.block.cache.filter.add.redundant COUNT : 0
rocksdb.block.cache.data.add.redundant COUNT : 178300
rocksdb.block.cache.compression.dict.add.redundant COUNT : 0
rocksdb.secondary.cache.hits COUNT : 0
rocksdb.secondary.cache.filter.hits COUNT : 0
rocksdb.secondary.cache.index.hits COUNT : 0
rocksdb.secondary.cache.data.hits COUNT : 0
rocksdb.compressed.secondary.cache.dummy.hits COUNT : 0
rocksdb.compressed.secondary.cache.hits COUNT : 0
rocksdb.compressed.secondary.cache.promotions COUNT : 0
rocksdb.compressed.secondary.cache.promotion.skips COUNT : 0
rocksdb.bloom.filter.useful COUNT : 0
rocksdb.bloom.filter.full.positive COUNT : 0
rocksdb.bloom.filter.full.true.positive COUNT : 0
rocksdb.bloom.filter.prefix.checked COUNT : 0
rocksdb.bloom.filter.prefix.useful COUNT : 0
rocksdb.bloom.filter.prefix.true.positive COUNT : 0
rocksdb.persistent.cache.hit COUNT : 0
rocksdb.persistent.cache.miss COUNT : 0
rocksdb.sim.block.cache.hit COUNT : 0
rocksdb.sim.block.cache.miss COUNT : 0
rocksdb.memtable.hit COUNT : 9680288
rocksdb.memtable.miss COUNT : 310319712
rocksdb.l0.hit COUNT : 35780752
rocksdb.l1.hit COUNT : 101113736
rocksdb.l2andup.hit COUNT : 173425224
rocksdb.compaction.key.drop.new COUNT : 383509384
rocksdb.compaction.key.drop.obsolete COUNT : 0
rocksdb.compaction.key.drop.range_del COUNT : 0
rocksdb.compaction.key.drop.user COUNT : 0
rocksdb.compaction.range_del.drop.obsolete COUNT : 0
rocksdb.compaction.optimized.del.drop.obsolete COUNT : 0
rocksdb.compaction.cancelled COUNT : 0
rocksdb.compaction.aborted COUNT : 0
rocksdb.number.keys.written COUNT : 407815714
rocksdb.number.keys.read COUNT : 320000000
rocksdb.number.keys.updated COUNT : 0
rocksdb.bytes.written COUNT : 53291921606
rocksdb.bytes.read COUNT : 32000000000
rocksdb.number.db.seek COUNT : 0
rocksdb.number.db.next COUNT : 0
rocksdb.number.db.prev COUNT : 0
rocksdb.number.db.seek.found COUNT : 0
rocksdb.number.db.next.found COUNT : 0
rocksdb.number.db.prev.found COUNT : 0
rocksdb.db.iter.bytes.read COUNT : 0
rocksdb.number.iter.skip COUNT : 0
rocksdb.number.reseeks.iteration COUNT : 0
rocksdb.num.iterator.created COUNT : 0
rocksdb.num.iterator.deleted COUNT : 0
rocksdb.no.file.opens COUNT : 2458
rocksdb.no.file.errors COUNT : 0
rocksdb.stall.micros COUNT : 0
rocksdb.db.mutex.wait.micros COUNT : 0
rocksdb.number.multiget.get COUNT : 0
rocksdb.number.multiget.keys.read COUNT : 0
rocksdb.number.multiget.bytes.read COUNT : 0
rocksdb.number.multiget.keys.found COUNT : 0
rocksdb.number.merge.failures COUNT : 0
rocksdb.getupdatessince.calls COUNT : 0
rocksdb.wal.synced COUNT : 0
rocksdb.wal.bytes COUNT : 53291921606
rocksdb.wal.precreate.hit COUNT : 0
rocksdb.wal.precreate.miss COUNT : 0
rocksdb.wal.precreate.waited COUNT : 0
rocksdb.wal.precreate.wait.micros COUNT : 0
rocksdb.wal.precreate.failed COUNT : 0
rocksdb.write.self COUNT : 396820970
rocksdb.write.other COUNT : 10994744
rocksdb.write.wal COUNT : 407815714
rocksdb.compact.read.bytes COUNT : 115589437673
rocksdb.compact.write.bytes COUNT : 90041854774
rocksdb.flush.write.bytes COUNT : 27341260875
rocksdb.compact.read.marked.bytes COUNT : 0
rocksdb.compact.read.periodic.bytes COUNT : 0
rocksdb.compact.read.ttl.bytes COUNT : 0
rocksdb.compact.write.marked.bytes COUNT : 0
rocksdb.compact.write.periodic.bytes COUNT : 0
rocksdb.compact.write.ttl.bytes COUNT : 0
rocksdb.number.direct.load.table.properties COUNT : 0
rocksdb.number.superversion_acquires COUNT : 7963
rocksdb.number.superversion_releases COUNT : 7732
rocksdb.number.superversion_cleanups COUNT : 498
rocksdb.number.block.compressed COUNT : 52233883
rocksdb.number.block.decompressed COUNT : 1156378677
rocksdb.bytes.compressed.from COUNT : 209844456366
rocksdb.bytes.compressed.to COUNT : 117118720483
rocksdb.bytes.compression_bypassed COUNT : 0
rocksdb.bytes.compression.rejected COUNT : 951
rocksdb.number.block_compression_bypassed COUNT : 0
rocksdb.number.block_compression_rejected COUNT : 50
rocksdb.bytes.decompressed.from COUNT : 2580453990919
rocksdb.bytes.decompressed.to COUNT : 4625032870469
rocksdb.merge.operation.time.nanos COUNT : 0
rocksdb.filter.operation.time.nanos COUNT : 0
rocksdb.compaction.total.time.cpu_micros COUNT : 1340034744
rocksdb.row.cache.hit COUNT : 0
rocksdb.row.cache.miss COUNT : 0
rocksdb.read.amp.estimate.useful.bytes COUNT : 0
rocksdb.read.amp.total.read.bytes COUNT : 0
rocksdb.number.rate_limiter.drains COUNT : 0
rocksdb.blobdb.num.put COUNT : 0
rocksdb.blobdb.num.write COUNT : 0
rocksdb.blobdb.num.get COUNT : 0
rocksdb.blobdb.num.multiget COUNT : 0
rocksdb.blobdb.num.seek COUNT : 0
rocksdb.blobdb.num.next COUNT : 0
rocksdb.blobdb.num.prev COUNT : 0
rocksdb.blobdb.num.keys.written COUNT : 0
rocksdb.blobdb.num.keys.read COUNT : 0
rocksdb.blobdb.bytes.written COUNT : 0
rocksdb.blobdb.bytes.read COUNT : 0
rocksdb.blobdb.write.inlined COUNT : 0
rocksdb.blobdb.write.inlined.ttl COUNT : 0
rocksdb.blobdb.write.blob COUNT : 0
rocksdb.blobdb.write.blob.ttl COUNT : 0
rocksdb.blobdb.blob.file.bytes.written COUNT : 0
rocksdb.blobdb.blob.file.bytes.read COUNT : 0
rocksdb.blobdb.blob.file.synced COUNT : 0
rocksdb.blobdb.blob.index.expired.count COUNT : 0
rocksdb.blobdb.blob.index.expired.size COUNT : 0
rocksdb.blobdb.blob.index.evicted.count COUNT : 0
rocksdb.blobdb.blob.index.evicted.size COUNT : 0
rocksdb.blobdb.gc.num.files COUNT : 0
rocksdb.blobdb.gc.num.new.files COUNT : 0
rocksdb.blobdb.gc.failures COUNT : 0
rocksdb.blobdb.gc.num.keys.relocated COUNT : 0
rocksdb.blobdb.gc.bytes.relocated COUNT : 0
rocksdb.blobdb.fifo.num.files.evicted COUNT : 0
rocksdb.blobdb.fifo.num.keys.evicted COUNT : 0
rocksdb.blobdb.fifo.bytes.evicted COUNT : 0
rocksdb.blobdb.cache.miss COUNT : 0
rocksdb.blobdb.cache.hit COUNT : 0
rocksdb.blobdb.cache.add COUNT : 0
rocksdb.blobdb.cache.add.failures COUNT : 0
rocksdb.blobdb.cache.bytes.read COUNT : 0
rocksdb.blobdb.cache.bytes.write COUNT : 0
rocksdb.txn.overhead.mutex.prepare COUNT : 0
rocksdb.txn.overhead.mutex.old.commit.map COUNT : 0
rocksdb.txn.overhead.duplicate.key COUNT : 0
rocksdb.txn.overhead.mutex.snapshot COUNT : 0
rocksdb.txn.get.tryagain COUNT : 0
rocksdb.files.marked.trash COUNT : 0
rocksdb.files.marked.trash.deleted COUNT : 0
rocksdb.files.deleted.immediately COUNT : 2440
rocksdb.error.handler.bg.error.count COUNT : 0
rocksdb.error.handler.bg.io.error.count COUNT : 0
rocksdb.error.handler.bg.retryable.io.error.count COUNT : 0
rocksdb.error.handler.autoresume.count COUNT : 0
rocksdb.error.handler.autoresume.retry.total.count COUNT : 0
rocksdb.error.handler.autoresume.success.count COUNT : 0
rocksdb.memtable.payload.bytes.at.flush COUNT : 50530083204
rocksdb.memtable.garbage.bytes.at.flush COUNT : 1180575108
rocksdb.verify_checksum.read.bytes COUNT : 0
rocksdb.backup.read.bytes COUNT : 0
rocksdb.backup.write.bytes COUNT : 0
rocksdb.remote.compact.read.bytes COUNT : 0
rocksdb.remote.compact.write.bytes COUNT : 0
rocksdb.remote.compact.resumed.bytes COUNT : 0
rocksdb.hot.file.read.bytes COUNT : 0
rocksdb.warm.file.read.bytes COUNT : 0
rocksdb.cool.file.read.bytes COUNT : 0
rocksdb.cold.file.read.bytes COUNT : 0
rocksdb.ice.file.read.bytes COUNT : 0
rocksdb.hot.file.read.count COUNT : 0
rocksdb.warm.file.read.count COUNT : 0
rocksdb.cool.file.read.count COUNT : 0
rocksdb.cold.file.read.count COUNT : 0
rocksdb.ice.file.read.count COUNT : 0
rocksdb.last.level.read.bytes COUNT : 0
rocksdb.last.level.read.count COUNT : 0
rocksdb.non.last.level.read.bytes COUNT : 2586238982197
rocksdb.non.last.level.read.count COUNT : 1156386101
rocksdb.last.level.seek.filtered COUNT : 0
rocksdb.last.level.seek.filter.match COUNT : 0
rocksdb.last.level.seek.data COUNT : 0
rocksdb.last.level.seek.data.useful.no.filter COUNT : 0
rocksdb.last.level.seek.data.useful.filter.match COUNT : 0
rocksdb.non.last.level.seek.filtered COUNT : 0
rocksdb.non.last.level.seek.filter.match COUNT : 0
rocksdb.non.last.level.seek.data COUNT : 0
rocksdb.non.last.level.seek.data.useful.no.filter COUNT : 0
rocksdb.non.last.level.seek.data.useful.filter.match COUNT : 0
rocksdb.block.checksum.compute.count COUNT : 1156381185
rocksdb.block.checksum.mismatch.count COUNT : 0
rocksdb.multiget.coroutine.count COUNT : 0
rocksdb.read.async.micros COUNT : 0
rocksdb.async.read.error.count COUNT : 0
rocksdb.table.open.prefetch.tail.miss COUNT : 0
rocksdb.table.open.prefetch.tail.hit COUNT : 0
rocksdb.timestamp.filter.table.checked COUNT : 0
rocksdb.timestamp.filter.table.filtered COUNT : 0
rocksdb.readahead.trimmed COUNT : 0
rocksdb.fifo.max.size.compactions COUNT : 0
rocksdb.fifo.ttl.compactions COUNT : 0
rocksdb.fifo.change_temperature.compactions COUNT : 0
rocksdb.prefetch.bytes COUNT : 0
rocksdb.prefetch.bytes.useful COUNT : 0
rocksdb.prefetch.hits COUNT : 0
rocksdb.footer.corruption.count COUNT : 0
rocksdb.file.read.corruption.retry.count COUNT : 0
rocksdb.file.read.corruption.retry.success.count COUNT : 0
rocksdb.number.wbwi.ingest COUNT : 0
rocksdb.sst.user.defined.index.load.fail.count COUNT : 0
rocksdb.multiscan.prepare.calls COUNT : 0
rocksdb.multiscan.prepare.errors COUNT : 0
rocksdb.multiscan.blocks.prefetched COUNT : 0
rocksdb.multiscan.blocks.from.cache COUNT : 0
rocksdb.multiscan.prefetch.bytes COUNT : 0
rocksdb.multiscan.prefetch.blocks.wasted COUNT : 0
rocksdb.multiscan.io.requests COUNT : 0
rocksdb.multiscan.io.coalesced.nonadjacent COUNT : 0
rocksdb.multiscan.seek.errors COUNT : 0
rocksdb.prefetch.memory.bytes.granted COUNT : 0
rocksdb.prefetch.memory.bytes.released COUNT : 0
rocksdb.prefetch.memory.requests.blocked COUNT : 0
rocksdb.read.path.range.tombstones.inserted COUNT : 0
rocksdb.read.path.range.tombstones.discarded COUNT : 0
rocksdb.file.open.metadata.retrieved COUNT : 0
rocksdb.file.open.metadata.passed COUNT : 0
rocksdb.manifest.validation.failure.count COUNT : 0
rocksdb.db.get.micros P50 : 48.121464 P95 : 98.859587 P99 : 245.961458 P100 : 50472.000000 COUNT : 319999247 SUM : 24290877915
rocksdb.db.write.micros P50 : 300.634792 P95 : 465.562704 P99 : 558.351213 P100 : 87038.000000 COUNT : 407815714 SUM : 99197663211
rocksdb.compaction.times.micros P50 : 2450000.000000 P95 : 11094054.054054 P99 : 11382304.000000 P100 : 11382304.000000 COUNT : 512 SUM : 1614015739
rocksdb.compaction.times.cpu_micros P50 : 1782105.263158 P95 : 7342022.000000 P99 : 7342022.000000 P100 : 7342022.000000 COUNT : 512 SUM : 1340034744
rocksdb.subcompaction.setup.times.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.table.sync.micros P50 : 20571.976967 P95 : 79542.553191 P99 : 105100.000000 P100 : 165339.000000 COUNT : 858 SUM : 22008383
rocksdb.compaction.outfile.sync.micros P50 : 33440.548780 P95 : 64062.500000 P99 : 82000.000000 P100 : 519092.000000 COUNT : 1600 SUM : 55885674
rocksdb.wal.file.sync.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.manifest.file.sync.micros P50 : 2784.318766 P95 : 7941.290323 P99 : 12669.777778 P100 : 18697.000000 COUNT : 1376 SUM : 4670568
rocksdb.table.open.io.micros P50 : 457.764566 P95 : 1068.906433 P99 : 1621.000000 P100 : 8837.000000 COUNT : 2458 SUM : 1291595
rocksdb.db.multiget.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.read.block.compaction.micros P50 : 3.874126 P95 : 9.275564 P99 : 17.458150 P100 : 43617.000000 COUNT : 51485859 SUM : 270854343
rocksdb.read.block.get.micros P50 : 7.938561 P95 : 11.136029 P99 : 26.113564 P100 : 50446.000000 COUNT : 1104892867 SUM : 14953326348
rocksdb.write.raw.block.micros P50 : 0.545191 P95 : 1.430051 P99 : 1.953054 P100 : 30286.000000 COUNT : 52238849 SUM : 127058223
rocksdb.numfiles.in.singlecompaction P50 : 2.816092 P95 : 9.000000 P99 : 9.000000 P100 : 9.000000 COUNT : 514 SUM : 2445
rocksdb.db.seek.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.db.write.stall P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.sst.read.micros P50 : 1.540121 P95 : 2.786242 P99 : 3.566495 P100 : 44378.000000 COUNT : 1156385241 SUM : 3563467331
rocksdb.file.read.flush.micros P50 : 4.087912 P95 : 50.097959 P99 : 72.043750 P100 : 175.000000 COUNT : 3432 SUM : 38120
rocksdb.file.read.compaction.micros P50 : 0.877268 P95 : 2.430535 P99 : 3.801919 P100 : 43599.000000 COUNT : 51492259 SUM : 88063318
rocksdb.file.read.db.open.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.get.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.multiget.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.db.iterator.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.verify.db.checksum.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.verify.file.checksums.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.sst.write.micros P50 : 0.501382 P95 : 0.952625 P99 : 0.992736 P100 : 30281.000000 COUNT : 104480156 SUM : 103599252
rocksdb.file.write.flush.micros P50 : 0.501090 P95 : 0.952071 P99 : 0.992158 P100 : 27851.000000 COUNT : 24126812 SUM : 25509655
rocksdb.file.write.compaction.micros P50 : 0.501469 P95 : 0.952792 P99 : 0.992909 P100 : 30281.000000 COUNT : 80353344 SUM : 78089597
rocksdb.file.write.db.open.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.num.subcompactions.scheduled P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.bytes.per.read P50 : 100.000000 P95 : 100.000000 P99 : 100.000000 P100 : 100.000000 COUNT : 319999323 SUM : 31999957100
rocksdb.bytes.per.write P50 : 140.640122 P95 : 168.216232 P99 : 217.241331 P100 : 1916.000000 COUNT : 396820970 SUM : 53291921606
rocksdb.bytes.per.multiget P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.compression.times.nanos P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.decompression.times.nanos P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.read.num.merge_operands P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.blobdb.key.size P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.blobdb.value.size P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.blobdb.write.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.blobdb.get.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.blobdb.multiget.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.blobdb.seek.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.blobdb.next.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.blobdb.prev.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.blobdb.blob.file.write.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.blobdb.blob.file.read.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.blobdb.blob.file.sync.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.blobdb.compression.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.blobdb.decompression.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.db.flush.micros P50 : 334244.712991 P95 : 752750.000000 P99 : 838550.000000 P100 : 856656.000000 COUNT : 858 SUM : 308109607
rocksdb.sst.batch.size P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.multiget.io.batch.size P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.num.index.and.filter.blocks.read.per.level P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.num.sst.read.per.level P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.num.level.read.per.multiget P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.error.handler.autoresume.retry.count P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.async.read.bytes P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.poll.wait.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.compaction.prefetch.bytes P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.prefetched.bytes.discarded P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.async.prefetch.abort.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.table.open.prefetch.tail.read.bytes P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.num.op.per.transaction P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.multiscan.op.prepare.iterators.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.multiscan.prepare.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.multiscan.blocks.per.prepare P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.block.key.distribution.cv P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.ingest.external.file.prepare.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.ingest.external.file.run.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0

```