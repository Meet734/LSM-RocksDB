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

Here is a summary of the empirical findings and trade-offs from the study:

- **Compression**: LZ4 is the optimal choice for most workloads as it provides a ~40% space reduction with minimal CPU overhead, whereas ZSTD is only justified for large values (>4 KB).
    
- **Memtable Sizing**: 256 MB is the recommended "sweet spot" that minimizes flush frequency and compaction overhead without inducing the transient space amplification spikes seen at 512 MB.
    
- **Background Jobs**: Scaling up to 8–16 threads significantly improves throughput and reduces read latency (P99) by keeping the LSM tree shallow, but gains are sublinear due to synchronization and CPU contention.
    
- **Block Cache**: A 1 GB cache size provides peak read throughput by capturing the active working set; increasing beyond this offers diminishing returns and can introduce management overhead.
    
- **I/O Mode**: Buffered I/O (default) is vastly superior for performance in virtualized environments like WSL2, as it masks storage latency with OS page caching that Direct I/O bypasses.
    
- **Compaction Style**: Leveled compaction is the most robust general-purpose strategy for balanced read/write performance, while Universal compaction reduces write amplification at the cost of higher space and read overhead, and FIFO is limited strictly to time-expiring data.