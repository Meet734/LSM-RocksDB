```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ cd ~/mtech-research/rocksdb/build

DB_DIR="/home/$USER/mtech-research/data/baseline-mixed"
RESULTS_DIR="/home/$USER/mtech-research/results/baseline-mixed"
mkdir -p "$DB_DIR" "$RESULTS_DIR"

# Load
./db_bench --benchmarks=fillrandom --num=1000000 --value_size=1024 --key_size=16 \
  --db="$DB_DIR" --duration=120 --statistics \
  2>&1 | tee "$RESULTS_DIR/load.log"

# Run: 50% read, 50% write
./db_bench --benchmarks=readwhilewriting --use_existing_db=1 --num=1000000 \
  --value_size=1024 --key_size=16 --db="$DB_DIR" --duration=300 --threads=4 \
  --readwritepercent=50 --statistics --stats_dump_period_sec=30 \
  2>&1 | tee "$RESULTS_DIR/run.log"
RocksDB:    version 11.6.0
Date:       Tue Jun 23 03:31:07 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Set seed to 1782185467589930 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     1024 bytes each (512 bytes after compression)
Entries:    1000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    991.8 MB (estimated)
FileSize:   503.5 MB (estimated)
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
DB path: [/home/meet/mtech-research/data/baseline-mixed]
fillrandom   :       6.208 micros/op 161080 ops/sec 120.002 seconds 19329999 operations;  159.8 MB/s
STATISTICS:
rocksdb.block.cache.miss COUNT : 11457363
rocksdb.block.cache.hit COUNT : 0
rocksdb.block.cache.add COUNT : 0
rocksdb.block.cache.add.failures COUNT : 0
rocksdb.block.cache.index.miss COUNT : 0
rocksdb.block.cache.index.hit COUNT : 0
rocksdb.block.cache.index.add COUNT : 0
rocksdb.block.cache.index.bytes.insert COUNT : 0
rocksdb.block.cache.filter.miss COUNT : 0
rocksdb.block.cache.filter.hit COUNT : 0
rocksdb.block.cache.filter.add COUNT : 0
rocksdb.block.cache.filter.bytes.insert COUNT : 0
rocksdb.block.cache.data.miss COUNT : 11457363
rocksdb.block.cache.data.hit COUNT : 0
rocksdb.block.cache.data.add COUNT : 0
rocksdb.block.cache.data.bytes.insert COUNT : 0
rocksdb.block.cache.bytes.read COUNT : 0
rocksdb.block.cache.bytes.write COUNT : 0
rocksdb.block.cache.compression.dict.miss COUNT : 0
rocksdb.block.cache.compression.dict.hit COUNT : 0
rocksdb.block.cache.compression.dict.add COUNT : 0
rocksdb.block.cache.compression.dict.bytes.insert COUNT : 0
rocksdb.block.cache.add.redundant COUNT : 0
rocksdb.block.cache.index.add.redundant COUNT : 0
rocksdb.block.cache.filter.add.redundant COUNT : 0
rocksdb.block.cache.data.add.redundant COUNT : 0
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
rocksdb.memtable.hit COUNT : 0
rocksdb.memtable.miss COUNT : 0
rocksdb.l0.hit COUNT : 0
rocksdb.l1.hit COUNT : 0
rocksdb.l2andup.hit COUNT : 0
rocksdb.compaction.key.drop.new COUNT : 16800248
rocksdb.compaction.key.drop.obsolete COUNT : 0
rocksdb.compaction.key.drop.range_del COUNT : 0
rocksdb.compaction.key.drop.user COUNT : 0
rocksdb.compaction.range_del.drop.obsolete COUNT : 0
rocksdb.compaction.optimized.del.drop.obsolete COUNT : 0
rocksdb.compaction.cancelled COUNT : 0
rocksdb.compaction.aborted COUNT : 0
rocksdb.number.keys.written COUNT : 19329999
rocksdb.number.keys.read COUNT : 0
rocksdb.number.keys.updated COUNT : 0
rocksdb.bytes.written COUNT : 20412478944
rocksdb.bytes.read COUNT : 0
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
rocksdb.no.file.opens COUNT : 589
rocksdb.no.file.errors COUNT : 0
rocksdb.stall.micros COUNT : 37777899
rocksdb.db.mutex.wait.micros COUNT : 0
rocksdb.number.multiget.get COUNT : 0
rocksdb.number.multiget.keys.read COUNT : 0
rocksdb.number.multiget.bytes.read COUNT : 0
rocksdb.number.multiget.keys.found COUNT : 0
rocksdb.number.merge.failures COUNT : 0
rocksdb.getupdatessince.calls COUNT : 0
rocksdb.wal.synced COUNT : 0
rocksdb.wal.bytes COUNT : 20412478944
rocksdb.wal.precreate.hit COUNT : 0
rocksdb.wal.precreate.miss COUNT : 0
rocksdb.wal.precreate.waited COUNT : 0
rocksdb.wal.precreate.wait.micros COUNT : 0
rocksdb.wal.precreate.failed COUNT : 0
rocksdb.write.self COUNT : 19329999
rocksdb.write.other COUNT : 0
rocksdb.write.wal COUNT : 19329999
rocksdb.compact.read.bytes COUNT : 27877358042
rocksdb.compact.write.bytes COUNT : 17649309082
rocksdb.flush.write.bytes COUNT : 11416208520
rocksdb.compact.read.marked.bytes COUNT : 0
rocksdb.compact.read.periodic.bytes COUNT : 0
rocksdb.compact.read.ttl.bytes COUNT : 0
rocksdb.compact.write.marked.bytes COUNT : 0
rocksdb.compact.write.periodic.bytes COUNT : 0
rocksdb.compact.write.ttl.bytes COUNT : 0
rocksdb.number.direct.load.table.properties COUNT : 0
rocksdb.number.superversion_acquires COUNT : 0
rocksdb.number.superversion_releases COUNT : 0
rocksdb.number.superversion_cleanups COUNT : 0
rocksdb.number.block.compressed COUNT : 11934286
rocksdb.number.block.decompressed COUNT : 11457952
rocksdb.bytes.compressed.from COUNT : 50298923968
rocksdb.bytes.compressed.to COUNT : 29034711195
rocksdb.bytes.compression_bypassed COUNT : 0
rocksdb.bytes.compression.rejected COUNT : 0
rocksdb.number.block_compression_bypassed COUNT : 0
rocksdb.number.block_compression_rejected COUNT : 0
rocksdb.bytes.decompressed.from COUNT : 27879488296
rocksdb.bytes.decompressed.to COUNT : 48298517085
rocksdb.merge.operation.time.nanos COUNT : 0
rocksdb.filter.operation.time.nanos COUNT : 0
rocksdb.compaction.total.time.cpu_micros COUNT : 105560901
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
rocksdb.files.deleted.immediately COUNT : 869
rocksdb.error.handler.bg.error.count COUNT : 0
rocksdb.error.handler.bg.io.error.count COUNT : 0
rocksdb.error.handler.bg.retryable.io.error.count COUNT : 0
rocksdb.error.handler.autoresume.count COUNT : 0
rocksdb.error.handler.autoresume.retry.total.count COUNT : 0
rocksdb.error.handler.autoresume.success.count COUNT : 0
rocksdb.memtable.payload.bytes.at.flush COUNT : 20168455032
rocksdb.memtable.garbage.bytes.at.flush COUNT : 615556424
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
rocksdb.non.last.level.read.bytes COUNT : 27937523604
rocksdb.non.last.level.read.count COUNT : 11459721
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
rocksdb.block.checksum.compute.count COUNT : 11458543
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
rocksdb.db.get.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.db.write.micros P50 : 2.725929 P95 : 5.835013 P99 : 15.945394 P100 : 21824.000000 COUNT : 19329999 SUM : 109984379
rocksdb.compaction.times.micros P50 : 3666666.666667 P95 : 4731595.000000 P99 : 4731595.000000 P100 : 4731595.000000 COUNT : 31 SUM : 114760622
rocksdb.compaction.times.cpu_micros P50 : 3488000.000000 P95 : 4269200.000000 P99 : 4344007.000000 P100 : 4344007.000000 COUNT : 31 SUM : 103352080
rocksdb.subcompaction.setup.times.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.table.sync.micros P50 : 28289.237668 P95 : 58206.521739 P99 : 71641.304348 P100 : 73160.000000 COUNT : 309 SUM : 9141929
rocksdb.compaction.outfile.sync.micros P50 : 43110.526316 P95 : 71896.551724 P99 : 87779.000000 P100 : 87779.000000 COUNT : 284 SUM : 12107763
rocksdb.wal.file.sync.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.manifest.file.sync.micros P50 : 3913.833992 P95 : 6507.368421 P99 : 25080.000000 P100 : 46385.000000 COUNT : 344 SUM : 1600089
rocksdb.table.open.io.micros P50 : 378.339416 P95 : 693.314815 P99 : 1507.333333 P100 : 1893.000000 COUNT : 589 SUM : 241923
rocksdb.db.multiget.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.read.block.compaction.micros P50 : 2.134565 P95 : 4.088319 P99 : 18.583533 P100 : 4123.000000 COUNT : 11457380 SUM : 34610821
rocksdb.read.block.get.micros P50 : 306.435811 P95 : 631.475000 P99 : 1507.333333 P100 : 1687.000000 COUNT : 589 SUM : 200146
rocksdb.write.raw.block.micros P50 : 0.505853 P95 : 0.961121 P99 : 1.230768 P100 : 38735.000000 COUNT : 11935492 SUM : 18340858
rocksdb.numfiles.in.singlecompaction P50 : 18.000000 P95 : 20.000000 P99 : 20.000000 P100 : 20.000000 COUNT : 32 SUM : 580
rocksdb.db.seek.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.db.write.stall P50 : 1086.493188 P95 : 1281.337057 P99 : 1298.656512 P100 : 2343.000000 COUNT : 34072 SUM : 37777899
rocksdb.sst.read.micros P50 : 0.534374 P95 : 1.329200 P99 : 16.774405 P100 : 2580.000000 COUNT : 11459741 SUM : 13238326
rocksdb.file.read.flush.micros P50 : 3.206897 P95 : 51.588235 P99 : 75.823529 P100 : 107.000000 COUNT : 1236 SUM : 15940
rocksdb.file.read.compaction.micros P50 : 0.534341 P95 : 1.327904 P99 : 16.758574 P100 : 2580.000000 COUNT : 11458506 SUM : 13222388
rocksdb.file.read.db.open.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.get.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.multiget.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.db.iterator.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.verify.db.checksum.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.verify.file.checksums.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.sst.write.micros P50 : 0.501003 P95 : 0.951906 P99 : 0.991986 P100 : 38730.000000 COUNT : 23871669 SUM : 14861236
rocksdb.file.write.flush.micros P50 : 0.501005 P95 : 0.951910 P99 : 0.991990 P100 : 30765.000000 COUNT : 9355271 SUM : 4635847
rocksdb.file.write.compaction.micros P50 : 0.501002 P95 : 0.951903 P99 : 0.991983 P100 : 38730.000000 COUNT : 14516414 SUM : 10225392
rocksdb.file.write.db.open.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.num.subcompactions.scheduled P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.bytes.per.read P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.bytes.per.write P50 : 1056.000000 P95 : 1056.000000 P99 : 1056.000000 P100 : 1056.000000 COUNT : 19329999 SUM : 20412478944
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
rocksdb.db.flush.micros P50 : 142756.183746 P95 : 203760.000000 P99 : 243312.000000 P100 : 258526.000000 COUNT : 309 SUM : 43012243
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

RocksDB:    version 11.6.0
Date:       Tue Jun 23 03:33:08 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Set seed to 1782185587793277 because --seed was 0
Initializing RocksDB Options from the specified file
Initializing RocksDB Options from command-line flags
Integrated BlobDB: blob cache disabled
Keys:       16 bytes each (+ 0 bytes user-defined timestamp)
Values:     1024 bytes each (512 bytes after compression)
Entries:    1000000
Prefix:    0 bytes
Keys per prefix:    0
RawSize:    991.8 MB (estimated)
FileSize:   503.5 MB (estimated)
Write rate: 0 bytes/second
Read rate: 0 ops/second
Compression: Snappy
Compression sampling rate: 0
Memtablerep: SkipListFactory
Perf Level: 1
------------------------------------------------
DB path: [/home/meet/mtech-research/data/baseline-mixed]
readwhilewriting :      78.023 micros/op 51262 ops/sec 300.065 seconds 15381996 operations;   50.8 MB/s (3872999 of 3872999 found)

STATISTICS:
rocksdb.block.cache.miss COUNT : 168847433
rocksdb.block.cache.hit COUNT : 6475859
rocksdb.block.cache.add COUNT : 147903803
rocksdb.block.cache.add.failures COUNT : 0
rocksdb.block.cache.index.miss COUNT : 0
rocksdb.block.cache.index.hit COUNT : 0
rocksdb.block.cache.index.add COUNT : 0
rocksdb.block.cache.index.bytes.insert COUNT : 0
rocksdb.block.cache.filter.miss COUNT : 0
rocksdb.block.cache.filter.hit COUNT : 0
rocksdb.block.cache.filter.add COUNT : 0
rocksdb.block.cache.filter.bytes.insert COUNT : 0
rocksdb.block.cache.data.miss COUNT : 168847433
rocksdb.block.cache.data.hit COUNT : 6475859
rocksdb.block.cache.data.add COUNT : 147903803
rocksdb.block.cache.data.bytes.insert COUNT : 636572684784
rocksdb.block.cache.bytes.read COUNT : 27871983920
rocksdb.block.cache.bytes.write COUNT : 636572684784
rocksdb.block.cache.compression.dict.miss COUNT : 0
rocksdb.block.cache.compression.dict.hit COUNT : 0
rocksdb.block.cache.compression.dict.add COUNT : 0
rocksdb.block.cache.compression.dict.bytes.insert COUNT : 0
rocksdb.block.cache.add.redundant COUNT : 5583
rocksdb.block.cache.index.add.redundant COUNT : 0
rocksdb.block.cache.filter.add.redundant COUNT : 0
rocksdb.block.cache.data.add.redundant COUNT : 5583
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
rocksdb.memtable.hit COUNT : 828970
rocksdb.memtable.miss COUNT : 14553026
rocksdb.l0.hit COUNT : 8795359
rocksdb.l1.hit COUNT : 5067308
rocksdb.l2andup.hit COUNT : 690359
rocksdb.compaction.key.drop.new COUNT : 32166017
rocksdb.compaction.key.drop.obsolete COUNT : 0
rocksdb.compaction.key.drop.range_del COUNT : 0
rocksdb.compaction.key.drop.user COUNT : 0
rocksdb.compaction.range_del.drop.obsolete COUNT : 0
rocksdb.compaction.optimized.del.drop.obsolete COUNT : 0
rocksdb.compaction.cancelled COUNT : 0
rocksdb.compaction.aborted COUNT : 0
rocksdb.number.keys.written COUNT : 33705962
rocksdb.number.keys.read COUNT : 15381996
rocksdb.number.keys.updated COUNT : 0
rocksdb.bytes.written COUNT : 35593495872
rocksdb.bytes.read COUNT : 15751163904
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
rocksdb.no.file.opens COUNT : 1045
rocksdb.no.file.errors COUNT : 0
rocksdb.stall.micros COUNT : 92751019
rocksdb.db.mutex.wait.micros COUNT : 0
rocksdb.number.multiget.get COUNT : 0
rocksdb.number.multiget.keys.read COUNT : 0
rocksdb.number.multiget.bytes.read COUNT : 0
rocksdb.number.multiget.keys.found COUNT : 0
rocksdb.number.merge.failures COUNT : 0
rocksdb.getupdatessince.calls COUNT : 0
rocksdb.wal.synced COUNT : 0
rocksdb.wal.bytes COUNT : 35593495872
rocksdb.wal.precreate.hit COUNT : 0
rocksdb.wal.precreate.miss COUNT : 0
rocksdb.wal.precreate.waited COUNT : 0
rocksdb.wal.precreate.wait.micros COUNT : 0
rocksdb.wal.precreate.failed COUNT : 0
rocksdb.write.self COUNT : 33705962
rocksdb.write.other COUNT : 0
rocksdb.write.wal COUNT : 33705962
rocksdb.compact.read.bytes COUNT : 51192580250
rocksdb.compact.write.bytes COUNT : 32238693993
rocksdb.flush.write.bytes COUNT : 20002245954
rocksdb.compact.read.marked.bytes COUNT : 0
rocksdb.compact.read.periodic.bytes COUNT : 0
rocksdb.compact.read.ttl.bytes COUNT : 0
rocksdb.compact.write.marked.bytes COUNT : 0
rocksdb.compact.write.periodic.bytes COUNT : 0
rocksdb.compact.write.ttl.bytes COUNT : 0
rocksdb.number.direct.load.table.properties COUNT : 0
rocksdb.number.superversion_acquires COUNT : 4588
rocksdb.number.superversion_releases COUNT : 4526
rocksdb.number.superversion_cleanups COUNT : 1146
rocksdb.number.block.compressed COUNT : 21330167
rocksdb.number.block.decompressed COUNT : 168848478
rocksdb.bytes.compressed.from COUNT : 89900732262
rocksdb.bytes.compressed.to COUNT : 52133796236
rocksdb.bytes.compression_bypassed COUNT : 0
rocksdb.bytes.compression.rejected COUNT : 0
rocksdb.number.block_compression_bypassed COUNT : 0
rocksdb.number.block_compression_rejected COUNT : 0
rocksdb.bytes.decompressed.from COUNT : 410796957942
rocksdb.bytes.decompressed.to COUNT : 708773534485
rocksdb.merge.operation.time.nanos COUNT : 0
rocksdb.filter.operation.time.nanos COUNT : 0
rocksdb.compaction.total.time.cpu_micros COUNT : 270060934
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
rocksdb.files.deleted.immediately COUNT : 1548
rocksdb.error.handler.bg.error.count COUNT : 0
rocksdb.error.handler.bg.io.error.count COUNT : 0
rocksdb.error.handler.bg.retryable.io.error.count COUNT : 0
rocksdb.error.handler.autoresume.count COUNT : 0
rocksdb.error.handler.autoresume.retry.total.count COUNT : 0
rocksdb.error.handler.autoresume.success.count COUNT : 0
rocksdb.memtable.payload.bytes.at.flush COUNT : 35311169472
rocksdb.memtable.garbage.bytes.at.flush COUNT : 1075149488
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
rocksdb.non.last.level.read.bytes COUNT : 411642517852
rocksdb.non.last.level.read.count COUNT : 168851613
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
rocksdb.block.checksum.compute.count COUNT : 168849523
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
rocksdb.db.get.micros P50 : 68.326045 P95 : 190.376988 P99 : 249.085146 P100 : 11731.000000 COUNT : 15381996 SUM : 1190538111
rocksdb.db.write.micros P50 : 3.911607 P95 : 9.511172 P99 : 18.502705 P100 : 625783.000000 COUNT : 33705962 SUM : 266217007
rocksdb.compaction.times.micros P50 : 5220408.163265 P95 : 6452857.142857 P99 : 7016730.000000 P100 : 7016730.000000 COUNT : 61 SUM : 292039683
rocksdb.compaction.times.cpu_micros P50 : 5158000.000000 P95 : 5937532.000000 P99 : 5937532.000000 P100 : 5937532.000000 COUNT : 61 SUM : 265668241
rocksdb.subcompaction.setup.times.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.table.sync.micros P50 : 29080.917874 P95 : 61250.000000 P99 : 318033.333333 P100 : 772156.000000 COUNT : 543 SUM : 20055660
rocksdb.compaction.outfile.sync.micros P50 : 43701.949861 P95 : 71391.752577 P99 : 399000.000000 P100 : 816503.000000 COUNT : 480 SUM : 25016446
rocksdb.wal.file.sync.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.manifest.file.sync.micros P50 : 4307.120743 P95 : 7577.307692 P99 : 19253.333333 P100 : 312594.000000 COUNT : 606 SUM : 3231508
rocksdb.table.open.io.micros P50 : 517.946429 P95 : 868.621673 P99 : 6281.000000 P100 : 9601.000000 COUNT : 1045 SUM : 700385
rocksdb.db.multiget.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.read.block.compaction.micros P50 : 2.579409 P95 : 5.811752 P99 : 18.944309 P100 : 1511.000000 COUNT : 20943630 SUM : 76502238
rocksdb.read.block.get.micros P50 : 3.857624 P95 : 9.240808 P99 : 21.880664 P100 : 11309.000000 COUNT : 147904848 SUM : 761757361
rocksdb.write.raw.block.micros P50 : 0.521223 P95 : 0.990324 P99 : 1.900362 P100 : 57993.000000 COUNT : 21332215 SUM : 50834609
rocksdb.numfiles.in.singlecompaction P50 : 17.590000 P95 : 21.685000 P99 : 26.200000 P100 : 31.000000 COUNT : 65 SUM : 1033
rocksdb.db.seek.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.db.write.stall P50 : 1086.540688 P95 : 1281.427307 P99 : 1298.750562 P100 : 624797.000000 COUNT : 83345 SUM : 92751019
rocksdb.sst.read.micros P50 : 0.789742 P95 : 1.979014 P99 : 3.454138 P100 : 11219.000000 COUNT : 168851613 SUM : 253508753
rocksdb.file.read.flush.micros P50 : 4.483871 P95 : 71.017123 P99 : 97.427556 P100 : 172.000000 COUNT : 2164 SUM : 37975
rocksdb.file.read.compaction.micros P50 : 0.665422 P95 : 1.950785 P99 : 15.598919 P100 : 1095.000000 COUNT : 20945522 SUM : 30305822
rocksdb.file.read.db.open.micros P50 : 1.782609 P95 : 5445.000000 P99 : 7854.000000 P100 : 8404.000000 COUNT : 124 SUM : 104961
rocksdb.file.read.get.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.multiget.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.db.iterator.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.verify.db.checksum.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.verify.file.checksums.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.sst.write.micros P50 : 0.501421 P95 : 0.952700 P99 : 0.992813 P100 : 57990.000000 COUNT : 42665454 SUM : 42565411
rocksdb.file.write.flush.micros P50 : 0.501294 P95 : 0.952459 P99 : 0.992562 P100 : 57990.000000 COUNT : 16338187 SUM : 14747743
rocksdb.file.write.compaction.micros P50 : 0.501500 P95 : 0.952849 P99 : 0.992969 P100 : 46134.000000 COUNT : 26285655 SUM : 27806712
rocksdb.file.write.db.open.micros P50 : 0.501398 P95 : 0.952656 P99 : 0.992767 P100 : 196.000000 COUNT : 41612 SUM : 10956
rocksdb.num.subcompactions.scheduled P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.bytes.per.read P50 : 1024.000000 P95 : 1024.000000 P99 : 1024.000000 P100 : 1024.000000 COUNT : 15381996 SUM : 15751163904
rocksdb.bytes.per.write P50 : 1056.000000 P95 : 1056.000000 P99 : 1056.000000 P100 : 1056.000000 COUNT : 33705962 SUM : 35593495872
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
rocksdb.db.flush.micros P50 : 188204.334365 P95 : 248501.547988 P99 : 480700.000000 P100 : 919522.000000 COUNT : 541 SUM : 102845699
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