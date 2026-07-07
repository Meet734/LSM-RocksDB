## 1. LZ4
- Recommended for practical RocksDB usecases
- It can support high compression and decompression speed.
- Best for: workloads where CPU cycles are limited but you still need to save disk space.
- Behavior: It decompress blocks quickly, when application reads data and keeps read latency low.
## 2. Snappy
- High speed compression with reasonable compression ratio (industry standard).
- Best for: Older setups where compatibility and stability are priority.
- Behavior: It is slightly less efficient in terms of compression ratio compared to LZ4 and ZSTD.
## 3. ZSTD (Zstandard)
- Modern technique, offers tunabe compression ratios. (Best compression ratio)
- Best for: Where disk space is more expensive than CPU cycles.
- Behavior: Higher compression ratio, DB size will be smaller but higher CPU usage during compression.
---
- For this workload, LZ4 improved throughput and reduced DB size
- In ZSTD CPU cost outweighted its compression benefit.
- LZ4/Snappy are practical default choices.

