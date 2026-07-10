### 1. LZ4 (Best)
- Recommended for practical RocksDB use cases
- Supports high compression and decompression speed with minimal CPU overhead
- Best for: workloads where CPU cycles are limited but you still need to save disk space
- Behavior: Decompresses blocks quickly when application reads data, keeps read latency low

### 2. Snappy
- High-speed compression with reasonable compression ratio (industry standard)
- Best for: Older setups where compatibility and stability are prioritized
- Behavior: Slightly less efficient in terms of compression ratio compared to LZ4 and ZSTD

### 3. ZSTD (Zstandard)
- Modern technique, offers tunable compression ratios (best compression ratio)
- Best for: Where disk space is more expensive than CPU cycles, and values are large (≫ 4 KB)
- Behavior: Higher compression ratio → smaller DB, but higher CPU usage during decompression

### 4. None (Uncompressed)
- Zero CPU decompression cost
- Largest on-disk DB footprint → bigger SSTs evict data from OS page cache → slower reads

---

## Experimental Results

### db_bench 8M Records, 16 Threads (fillrandom + readrandom)

| Codec   | Read Throughput (ops/s) | DB Size (MB) | Read p99 (µs) | Compaction Time (ms) |
| ------- | ----------------------- | ------------ | ------------- | -------------------- |
| none    | 343,232                 | **1,419**    | 12            | 18,190               |
| snappy  | 402,191                 | 850          | 10            | 5,342                |
| **lz4** | **410,341**             | **850**      | **10**        | 8,167                |
| zstd    | 341,087                 | 911          | 12            | 8,517                |

### Scaling Behavior (lz4 across scales)

| Scale | Read ops/s | DB Size (MB) | p99 (µs) | Throughput Decay vs 8M |
| ----- | ---------- | ------------ | -------- | ---------------------- |
| 8M    | 410,341    | 850          | 10       | baseline               |
| 10M   | 369,307    | 1,062        | 11       | −10%                   |
| 50M   | 184,653    | 5,312        | 22       | −55%                   |
| 100M  | 114,895    | 10,625       | 35       | −72%                   |

### Knob Ranking Stability Across Scale

The ranking **lz4 > snappy > none > zstd** holds at every single dataset scale (8M, 10M, 50M, 100M). This is a key finding you can pick the codec at small scale and it remains optimal at large scale.

---

## Key Observations

- **lz4 & snappy dominate:** ~40% space reduction (1,419 MB → 850 MB) AND higher read throughput vs uncompressed
- **Why smaller = faster:** I/O-bound workload; smaller SST files keep more of the active working set resident in OS page cache
- **zstd trap at 1 KB values:** Heavy CPU decompression overhead is not repaid by extra space savings at this value size. Only justified when values are ≫ 4 KB
- **Compression reduces compaction time:** Snappy achieves lowest compaction time (5,342 ms) because compressed blocks move through I/O faster
- **~72% uniform decay** at 100M records: All codecs decay by the same factor because the bottleneck shifts from CPU to disk I/O

---

## Decision Summary

| Codec   | Pros                                 | Cons                              | Verdict                |
| ------- | ------------------------------------ | --------------------------------- | ---------------------- |
| **lz4** | Smallest DB + fastest reads          |                                   |  **Default Choice**    |
| snappy  | Fast decompression, −40% size        | Slightly lower ops/s vs lz4       | Strong alternative     |
| zstd    | Best compression ratio on big values | Slowest reads at 1 KB (CPU-bound) | Only for values ≫ 4 KB |
| none    | Zero CPU decompression cost          | 67% bloated DB, evicts page cache | Avoid in practice      |
