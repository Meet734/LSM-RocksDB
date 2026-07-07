- LZ4 gave best compression + throughput balance
- Larger memtables reduce flush and compaction pressure
- More threads improved throughput monotonically, but with slower rate at higher numbers.
- Cache tuning was non-monotonic, 1GB cache performed well for this workload.
- Direct I/O cause severe decrease in throughput
- Level compaction performed well for this workload, smaller DB size.

```shell
compression = lz4
write_buffer_size = 512
max_background_jobs = 16
block_cache = 1024
direct_io = off
compaction_style = level
```