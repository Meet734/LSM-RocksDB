```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ DB_DIR="/home/$USER/mtech-research/data/baseline-del"
RESULTS_DIR="/home/$USER/mtech-research/results/baseline-del"
mkdir -p "$DB_DIR" "$RESULTS_DIR"

# Load
./db_bench --benchmarks=fillrandom --num=1000000 --value_size=1024 --key_size=16 \
  --db="$DB_DIR" --duration=120 --statistics \
  2>&1 | tee "$RESULTS_DIR/load.log"

# Run: db_bench doesn't have native delete ratio. Use deleterandom + readrandom interleaved
# Alternative: Use --benchmarks=readwhilewriting,deleterandom with custom script
# For now, approximate with deleterandom
./db_bench --benchmarks=deleterandom --use_existing_db=1 --num=1000000 \
  --value_size=1024 --key_size=16 --db="$DB_DIR" --duration=180 --threads=4 \
  --statistics --stats_dump_period_sec=30 \
  2>&1 | tee "$RESULTS_DIR/delete.log"

./db_bench --benchmarks=readrandom --use_existing_db=1 --num=1000000 \
  --value_size=1024 --key_size=16 --db="$DB_DIR" --duration=120 --threads=4 \
  --statistics --stats_dump_period_sec=30 \
  2>&1 | tee "$RESULTS_DIR/read.log"
RocksDB:    version 11.6.0
Date:       Tue Jun 23 03:40:43 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Set seed to 1782186042988019 because --seed was 0
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
DB path: [/home/meet/mtech-research/data/baseline-del]
fillrandom   :       6.546 micros/op 152774 ops/sec 120.001 seconds 18332999 operations;  151.5 MB/s
STATISTICS:
rocksdb.block.cache.miss COUNT : 10407985
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
rocksdb.block.cache.data.miss COUNT : 10407987
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
rocksdb.compaction.key.drop.new COUNT : 15146261
rocksdb.compaction.key.drop.obsolete COUNT : 0
rocksdb.compaction.key.drop.range_del COUNT : 0
rocksdb.compaction.key.drop.user COUNT : 0
rocksdb.compaction.range_del.drop.obsolete COUNT : 0
rocksdb.compaction.optimized.del.drop.obsolete COUNT : 0
rocksdb.compaction.cancelled COUNT : 0
rocksdb.compaction.aborted COUNT : 0
rocksdb.number.keys.written COUNT : 18332999
rocksdb.number.keys.read COUNT : 0
rocksdb.number.keys.updated COUNT : 0
rocksdb.bytes.written COUNT : 19359646944
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
rocksdb.no.file.opens COUNT : 507
rocksdb.no.file.errors COUNT : 0
rocksdb.stall.micros COUNT : 32744303
rocksdb.db.mutex.wait.micros COUNT : 0
rocksdb.number.multiget.get COUNT : 0
rocksdb.number.multiget.keys.read COUNT : 0
rocksdb.number.multiget.bytes.read COUNT : 0
rocksdb.number.multiget.keys.found COUNT : 0
rocksdb.number.merge.failures COUNT : 0
rocksdb.getupdatessince.calls COUNT : 0
rocksdb.wal.synced COUNT : 0
rocksdb.wal.bytes COUNT : 19359646944
rocksdb.wal.precreate.hit COUNT : 0
rocksdb.wal.precreate.miss COUNT : 0
rocksdb.wal.precreate.waited COUNT : 0
rocksdb.wal.precreate.wait.micros COUNT : 0
rocksdb.wal.precreate.failed COUNT : 0
rocksdb.write.self COUNT : 18332999
rocksdb.write.other COUNT : 0
rocksdb.write.wal COUNT : 18332999
rocksdb.compact.read.bytes COUNT : 25393555615
rocksdb.compact.write.bytes COUNT : 16174215212
rocksdb.flush.write.bytes COUNT : 10825305647
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
rocksdb.number.block.compressed COUNT : 11055650
rocksdb.number.block.decompressed COUNT : 10408495
rocksdb.bytes.compressed.from COUNT : 46596449529
rocksdb.bytes.compressed.to COUNT : 26969798554
rocksdb.bytes.compression_bypassed COUNT : 0
rocksdb.bytes.compression.rejected COUNT : 32
rocksdb.number.block_compression_bypassed COUNT : 0
rocksdb.number.block_compression_rejected COUNT : 1
rocksdb.bytes.decompressed.from COUNT : 25397960787
rocksdb.bytes.decompressed.to COUNT : 43881636033
rocksdb.merge.operation.time.nanos COUNT : 0
rocksdb.filter.operation.time.nanos COUNT : 0
rocksdb.compaction.total.time.cpu_micros COUNT : 103787731
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
rocksdb.files.deleted.immediately COUNT : 773
rocksdb.error.handler.bg.error.count COUNT : 0
rocksdb.error.handler.bg.io.error.count COUNT : 0
rocksdb.error.handler.bg.retryable.io.error.count COUNT : 0
rocksdb.error.handler.autoresume.count COUNT : 0
rocksdb.error.handler.autoresume.retry.total.count COUNT : 0
rocksdb.error.handler.autoresume.success.count COUNT : 0
rocksdb.memtable.payload.bytes.at.flush COUNT : 19124176480
rocksdb.memtable.garbage.bytes.at.flush COUNT : 582720488
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
rocksdb.non.last.level.read.bytes COUNT : 25450651579
rocksdb.non.last.level.read.count COUNT : 10410021
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
rocksdb.block.checksum.compute.count COUNT : 10409007
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
rocksdb.db.write.micros P50 : 2.949424 P95 : 7.985065 P99 : 18.358459 P100 : 668290.000000 COUNT : 18332999 SUM : 109609287
rocksdb.compaction.times.micros P50 : 3818750.000000 P95 : 5292167.000000 P99 : 5292167.000000 P100 : 5292167.000000 COUNT : 31 SUM : 116917958
rocksdb.compaction.times.cpu_micros P50 : 3568181.818182 P95 : 4946247.000000 P99 : 4946247.000000 P100 : 4946247.000000 COUNT : 31 SUM : 103765348
rocksdb.subcompaction.setup.times.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.table.sync.micros P50 : 28775.000000 P95 : 63511.904762 P99 : 259100.000000 P100 : 774891.000000 COUNT : 293 SUM : 10780099
rocksdb.compaction.outfile.sync.micros P50 : 47481.481481 P95 : 103184.210526 P99 : 653133.333333 P100 : 710819.000000 COUNT : 214 SUM : 13724244
rocksdb.wal.file.sync.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.manifest.file.sync.micros P50 : 4061.971831 P95 : 7425.000000 P99 : 24566.666667 P100 : 51382.000000 COUNT : 330 SUM : 1617021
rocksdb.table.open.io.micros P50 : 418.157895 P95 : 855.184783 P99 : 1298.327778 P100 : 1515.000000 COUNT : 507 SUM : 227984
rocksdb.db.multiget.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.read.block.compaction.micros P50 : 2.208582 P95 : 5.046861 P99 : 18.882188 P100 : 10328.000000 COUNT : 10408022 SUM : 32765196
rocksdb.read.block.get.micros P50 : 316.884058 P95 : 793.270833 P99 : 1244.368750 P100 : 1478.000000 COUNT : 507 SUM : 186371
rocksdb.write.raw.block.micros P50 : 0.512191 P95 : 0.973164 P99 : 1.848845 P100 : 48224.000000 COUNT : 11056735 SUM : 23726588
rocksdb.numfiles.in.singlecompaction P50 : 17.041667 P95 : 20.000000 P99 : 20.000000 P100 : 20.000000 COUNT : 34 SUM : 506
rocksdb.db.seek.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.db.write.stall P50 : 1090.118286 P95 : 1288.224743 P99 : 2336.356108 P100 : 667853.000000 COUNT : 27524 SUM : 32744303
rocksdb.sst.read.micros P50 : 0.567480 P95 : 1.784407 P99 : 16.228945 P100 : 10297.000000 COUNT : 10410060 SUM : 13164228
rocksdb.file.read.flush.micros P50 : 3.361702 P95 : 58.822581 P99 : 87.193846 P100 : 240.000000 COUNT : 1172 SUM : 16502
rocksdb.file.read.compaction.micros P50 : 0.567443 P95 : 1.783762 P99 : 16.208132 P100 : 10297.000000 COUNT : 10408890 SUM : 13147729
rocksdb.file.read.db.open.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.get.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.multiget.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.db.iterator.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.verify.db.checksum.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.verify.file.checksums.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.sst.write.micros P50 : 0.501636 P95 : 0.953109 P99 : 0.993240 P100 : 48221.000000 COUNT : 22114079 SUM : 20153648
rocksdb.file.write.flush.micros P50 : 0.501580 P95 : 0.953002 P99 : 0.993128 P100 : 48221.000000 COUNT : 8869903 SUM : 7656743
rocksdb.file.write.compaction.micros P50 : 0.501674 P95 : 0.953181 P99 : 0.993315 P100 : 46624.000000 COUNT : 13244182 SUM : 12496905
rocksdb.file.write.db.open.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.num.subcompactions.scheduled P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.bytes.per.read P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.bytes.per.write P50 : 1056.000000 P95 : 1056.000000 P99 : 1056.000000 P100 : 1056.000000 COUNT : 18332999 SUM : 19359646944
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
rocksdb.db.flush.micros P50 : 154846.938776 P95 : 242395.604396 P99 : 590300.000000 P100 : 903022.000000 COUNT : 293 SUM : 48864514
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
Date:       Tue Jun 23 03:42:43 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Set seed to 1782186163207900 because --seed was 0
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
DB path: [/home/meet/mtech-research/data/baseline-del]
deleterandom :       7.376 micros/op 542269 ops/sec 180.005 seconds 97610996 operations;
STATISTICS:
rocksdb.block.cache.miss COUNT : 1246813
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
rocksdb.block.cache.data.miss COUNT : 1246813
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
rocksdb.compaction.key.drop.new COUNT : 19709040
rocksdb.compaction.key.drop.obsolete COUNT : 33557676
rocksdb.compaction.key.drop.range_del COUNT : 0
rocksdb.compaction.key.drop.user COUNT : 0
rocksdb.compaction.range_del.drop.obsolete COUNT : 0
rocksdb.compaction.optimized.del.drop.obsolete COUNT : 0
rocksdb.compaction.cancelled COUNT : 0
rocksdb.compaction.aborted COUNT : 0
rocksdb.number.keys.written COUNT : 97610996
rocksdb.number.keys.read COUNT : 0
rocksdb.number.keys.updated COUNT : 0
rocksdb.bytes.written COUNT : 2477349984
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
rocksdb.no.file.opens COUNT : 111
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
rocksdb.wal.bytes COUNT : 2477349984
rocksdb.wal.precreate.hit COUNT : 0
rocksdb.wal.precreate.miss COUNT : 0
rocksdb.wal.precreate.waited COUNT : 0
rocksdb.wal.precreate.wait.micros COUNT : 0
rocksdb.wal.precreate.failed COUNT : 0
rocksdb.write.self COUNT : 60029338
rocksdb.write.other COUNT : 37581658
rocksdb.write.wal COUNT : 97610996
rocksdb.compact.read.bytes COUNT : 2914712910
rocksdb.compact.write.bytes COUNT : 864565470
rocksdb.flush.write.bytes COUNT : 502290738
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
rocksdb.number.block.compressed COUNT : 609463
rocksdb.number.block.decompressed COUNT : 1246922
rocksdb.bytes.compressed.from COUNT : 2546396003
rocksdb.bytes.compressed.to COUNT : 1363690745
rocksdb.bytes.compression_bypassed COUNT : 0
rocksdb.bytes.compression.rejected COUNT : 60
rocksdb.number.block_compression_bypassed COUNT : 0
rocksdb.number.block_compression_rejected COUNT : 2
rocksdb.bytes.decompressed.from COUNT : 2919907271
rocksdb.bytes.decompressed.to COUNT : 5233143290
rocksdb.merge.operation.time.nanos COUNT : 0
rocksdb.filter.operation.time.nanos COUNT : 0
rocksdb.compaction.total.time.cpu_micros COUNT : 18200240
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
rocksdb.files.deleted.immediately COUNT : 179
rocksdb.error.handler.bg.error.count COUNT : 0
rocksdb.error.handler.bg.io.error.count COUNT : 0
rocksdb.error.handler.bg.retryable.io.error.count COUNT : 0
rocksdb.error.handler.autoresume.count COUNT : 0
rocksdb.error.handler.autoresume.retry.total.count COUNT : 0
rocksdb.error.handler.autoresume.success.count COUNT : 0
rocksdb.memtable.payload.bytes.at.flush COUNT : 2308954776
rocksdb.memtable.garbage.bytes.at.flush COUNT : 1093729248
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
rocksdb.non.last.level.read.bytes COUNT : 2926281732
rocksdb.non.last.level.read.count COUNT : 1247257
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
rocksdb.block.checksum.compute.count COUNT : 1247035
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
rocksdb.db.write.micros P50 : 5.807652 P95 : 12.128113 P99 : 22.782453 P100 : 10538.000000 COUNT : 97610996 SUM : 683518330
rocksdb.compaction.times.micros P50 : 236666.666667 P95 : 1900000.000000 P99 : 4837453.000000 P100 : 4837453.000000 COUNT : 40 SUM : 18720721
rocksdb.compaction.times.cpu_micros P50 : 236666.666667 P95 : 1900000.000000 P99 : 4521586.000000 P100 : 4521586.000000 COUNT : 40 SUM : 18200240
rocksdb.subcompaction.setup.times.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.table.sync.micros P50 : 11700.000000 P95 : 30800.000000 P99 : 45089.000000 P100 : 45089.000000 COUNT : 68 SUM : 896805
rocksdb.compaction.outfile.sync.micros P50 : 33000.000000 P95 : 78500.000000 P99 : 80868.000000 P100 : 80868.000000 COUNT : 18 SUM : 560345
rocksdb.wal.file.sync.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.manifest.file.sync.micros P50 : 4094.000000 P95 : 6616.500000 P99 : 8835.000000 P100 : 8835.000000 COUNT : 199 SUM : 891134
rocksdb.table.open.io.micros P50 : 212.285714 P95 : 7283.571429 P99 : 9353.000000 P100 : 9353.000000 COUNT : 111 SUM : 138370
rocksdb.db.multiget.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.read.block.compaction.micros P50 : 2.867683 P95 : 12.184172 P99 : 21.191746 P100 : 362.000000 COUNT : 1246813 SUM : 5695330
rocksdb.read.block.get.micros P50 : 94.837838 P95 : 7283.571429 P99 : 9308.000000 P100 : 9308.000000 COUNT : 111 SUM : 127895
rocksdb.write.raw.block.micros P50 : 0.530313 P95 : 1.148212 P99 : 1.976186 P100 : 6950.000000 COUNT : 609637 SUM : 1229518
rocksdb.numfiles.in.singlecompaction P50 : 1.000000 P95 : 1.927778 P99 : 9.360000 P100 : 19.000000 COUNT : 132 SUM : 203
rocksdb.db.seek.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.db.write.stall P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.sst.read.micros P50 : 0.606460 P95 : 1.880859 P99 : 19.235023 P100 : 7150.000000 COUNT : 1247257 SUM : 1868421
rocksdb.file.read.flush.micros P50 : 4.000000 P95 : 13.666667 P99 : 27.440000 P100 : 35.000000 COUNT : 264 SUM : 1396
rocksdb.file.read.compaction.micros P50 : 0.606366 P95 : 1.879907 P99 : 19.225551 P100 : 228.000000 COUNT : 1246885 SUM : 1785471
rocksdb.file.read.db.open.micros P50 : 1.529412 P95 : 5845.714286 P99 : 7150.000000 P100 : 7150.000000 COUNT : 108 SUM : 81554
rocksdb.file.read.get.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.multiget.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.db.iterator.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.verify.db.checksum.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.verify.file.checksums.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.sst.write.micros P50 : 0.502179 P95 : 0.954139 P99 : 0.994314 P100 : 6947.000000 COUNT : 1219360 SUM : 990208
rocksdb.file.write.flush.micros P50 : 0.501514 P95 : 0.952876 P99 : 0.992997 P100 : 1553.000000 COUNT : 517202 SUM : 379807
rocksdb.file.write.compaction.micros P50 : 0.502751 P95 : 0.955227 P99 : 0.995447 P100 : 6947.000000 COUNT : 660830 SUM : 598905
rocksdb.file.write.db.open.micros P50 : 0.501371 P95 : 0.952605 P99 : 0.992714 P100 : 219.000000 COUNT : 41328 SUM : 11496
rocksdb.num.subcompactions.scheduled P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.bytes.per.read P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.bytes.per.write P50 : 34.926079 P95 : 63.887092 P99 : 73.746206 P100 : 84.000000 COUNT : 60029338 SUM : 2477349984
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
rocksdb.db.flush.micros P50 : 433695.652174 P95 : 515205.000000 P99 : 515205.000000 P100 : 515205.000000 COUNT : 66 SUM : 26717241
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
Date:       Tue Jun 23 03:45:46 2026
CPU:        12 * Intel(R) Core(TM) i5-10505 CPU @ 3.20GHz
CPUCache:   12288 KB
Set seed to 1782186343642158 because --seed was 0
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
DB path: [/home/meet/mtech-research/data/baseline-del]
readrandom   :       2.965 micros/op 1349122 ops/sec 120.002 seconds 161897996 operations; (0 of 39834999 found)

STATISTICS:
rocksdb.block.cache.miss COUNT : 4010
rocksdb.block.cache.hit COUNT : 317163298
rocksdb.block.cache.add COUNT : 4010
rocksdb.block.cache.add.failures COUNT : 0
rocksdb.block.cache.index.miss COUNT : 0
rocksdb.block.cache.index.hit COUNT : 0
rocksdb.block.cache.index.add COUNT : 0
rocksdb.block.cache.index.bytes.insert COUNT : 0
rocksdb.block.cache.filter.miss COUNT : 0
rocksdb.block.cache.filter.hit COUNT : 0
rocksdb.block.cache.filter.add COUNT : 0
rocksdb.block.cache.filter.bytes.insert COUNT : 0
rocksdb.block.cache.data.miss COUNT : 4010
rocksdb.block.cache.data.hit COUNT : 317163298
rocksdb.block.cache.data.add COUNT : 4010
rocksdb.block.cache.data.bytes.insert COUNT : 16743824
rocksdb.block.cache.bytes.read COUNT : 1326088003584
rocksdb.block.cache.bytes.write COUNT : 16743824
rocksdb.block.cache.compression.dict.miss COUNT : 0
rocksdb.block.cache.compression.dict.hit COUNT : 0
rocksdb.block.cache.compression.dict.add COUNT : 0
rocksdb.block.cache.compression.dict.bytes.insert COUNT : 0
rocksdb.block.cache.add.redundant COUNT : 2
rocksdb.block.cache.index.add.redundant COUNT : 0
rocksdb.block.cache.filter.add.redundant COUNT : 0
rocksdb.block.cache.data.add.redundant COUNT : 2
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
rocksdb.memtable.miss COUNT : 161897996
rocksdb.l0.hit COUNT : 0
rocksdb.l1.hit COUNT : 0
rocksdb.l2andup.hit COUNT : 0
rocksdb.compaction.key.drop.new COUNT : 0
rocksdb.compaction.key.drop.obsolete COUNT : 0
rocksdb.compaction.key.drop.range_del COUNT : 0
rocksdb.compaction.key.drop.user COUNT : 0
rocksdb.compaction.range_del.drop.obsolete COUNT : 0
rocksdb.compaction.optimized.del.drop.obsolete COUNT : 0
rocksdb.compaction.cancelled COUNT : 0
rocksdb.compaction.aborted COUNT : 0
rocksdb.number.keys.written COUNT : 0
rocksdb.number.keys.read COUNT : 161897996
rocksdb.number.keys.updated COUNT : 0
rocksdb.bytes.written COUNT : 0
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
rocksdb.no.file.opens COUNT : 2
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
rocksdb.wal.bytes COUNT : 0
rocksdb.wal.precreate.hit COUNT : 0
rocksdb.wal.precreate.miss COUNT : 0
rocksdb.wal.precreate.waited COUNT : 0
rocksdb.wal.precreate.wait.micros COUNT : 0
rocksdb.wal.precreate.failed COUNT : 0
rocksdb.write.self COUNT : 0
rocksdb.write.other COUNT : 0
rocksdb.write.wal COUNT : 0
rocksdb.compact.read.bytes COUNT : 0
rocksdb.compact.write.bytes COUNT : 7752230
rocksdb.flush.write.bytes COUNT : 0
rocksdb.compact.read.marked.bytes COUNT : 0
rocksdb.compact.read.periodic.bytes COUNT : 0
rocksdb.compact.read.ttl.bytes COUNT : 0
rocksdb.compact.write.marked.bytes COUNT : 0
rocksdb.compact.write.periodic.bytes COUNT : 0
rocksdb.compact.write.ttl.bytes COUNT : 0
rocksdb.number.direct.load.table.properties COUNT : 0
rocksdb.number.superversion_acquires COUNT : 4
rocksdb.number.superversion_releases COUNT : 0
rocksdb.number.superversion_cleanups COUNT : 0
rocksdb.number.block.compressed COUNT : 4008
rocksdb.number.block.decompressed COUNT : 4012
rocksdb.bytes.compressed.from COUNT : 16373041
rocksdb.bytes.compressed.to COUNT : 7729727
rocksdb.bytes.compression_bypassed COUNT : 0
rocksdb.bytes.compression.rejected COUNT : 0
rocksdb.number.block_compression_bypassed COUNT : 0
rocksdb.number.block_compression_rejected COUNT : 0
rocksdb.bytes.decompressed.from COUNT : 7737219
rocksdb.bytes.decompressed.to COUNT : 16389364
rocksdb.merge.operation.time.nanos COUNT : 0
rocksdb.filter.operation.time.nanos COUNT : 0
rocksdb.compaction.total.time.cpu_micros COUNT : 0
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
rocksdb.files.deleted.immediately COUNT : 1
rocksdb.error.handler.bg.error.count COUNT : 0
rocksdb.error.handler.bg.io.error.count COUNT : 0
rocksdb.error.handler.bg.retryable.io.error.count COUNT : 0
rocksdb.error.handler.autoresume.count COUNT : 0
rocksdb.error.handler.autoresume.retry.total.count COUNT : 0
rocksdb.error.handler.autoresume.success.count COUNT : 0
rocksdb.memtable.payload.bytes.at.flush COUNT : 0
rocksdb.memtable.garbage.bytes.at.flush COUNT : 0
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
rocksdb.non.last.level.read.bytes COUNT : 7759742
rocksdb.non.last.level.read.count COUNT : 4018
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
rocksdb.block.checksum.compute.count COUNT : 4014
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
rocksdb.db.get.micros P50 : 2.018279 P95 : 4.787252 P99 : 5.875901 P100 : 9846.000000 COUNT : 161897996 SUM : 454483820
rocksdb.db.write.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.compaction.times.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.compaction.times.cpu_micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.subcompaction.setup.times.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.table.sync.micros P50 : 6600.000000 P95 : 51980.000000 P99 : 51980.000000 P100 : 51980.000000 COUNT : 2 SUM : 58427
rocksdb.compaction.outfile.sync.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.wal.file.sync.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.manifest.file.sync.micros P50 : 5804.000000 P95 : 5804.000000 P99 : 5804.000000 P100 : 5804.000000 COUNT : 1 SUM : 5804
rocksdb.table.open.io.micros P50 : 170.000000 P95 : 222.000000 P99 : 222.000000 P100 : 222.000000 COUNT : 2 SUM : 363
rocksdb.db.multiget.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.read.block.compaction.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.read.block.get.micros P50 : 8.967074 P95 : 28.970701 P99 : 43.819200 P100 : 69.000000 COUNT : 4012 SUM : 49560
rocksdb.write.raw.block.micros P50 : 0.553685 P95 : 1.634343 P99 : 3.638571 P100 : 570.000000 COUNT : 4012 SUM : 7383
rocksdb.numfiles.in.singlecompaction P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.db.seek.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.db.write.stall P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.sst.read.micros P50 : 0.647856 P95 : 2.038346 P99 : 12.623077 P100 : 33.000000 COUNT : 4018 SUM : 5794
rocksdb.file.read.flush.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.compaction.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.db.open.micros P50 : 2.000000 P95 : 13.000000 P99 : 14.000000 P100 : 14.000000 COUNT : 8 SUM : 37
rocksdb.file.read.get.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.multiget.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.db.iterator.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.verify.db.checksum.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.read.verify.file.checksums.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.sst.write.micros P50 : 0.513697 P95 : 0.976024 P99 : 1.916027 P100 : 568.000000 COUNT : 8026 SUM : 6158
rocksdb.file.write.flush.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.write.compaction.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.file.write.db.open.micros P50 : 0.513697 P95 : 0.976024 P99 : 1.916027 P100 : 568.000000 COUNT : 8026 SUM : 6158
rocksdb.num.subcompactions.scheduled P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
rocksdb.bytes.per.read P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 161897996 SUM : 0
rocksdb.bytes.per.write P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
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
rocksdb.db.flush.micros P50 : 0.000000 P95 : 0.000000 P99 : 0.000000 P100 : 0.000000 COUNT : 0 SUM : 0
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