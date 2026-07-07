- Overall throughput increases non-monotonically with respect to cache size. A cache size which can give good increase in hit rate is important rather than increasing cache size.
## 1. 512MB
- Under-provisioned: frequent cache misses force disk reads for index blocks.
## 2. 1GB
- Throughput increases with good rate, contains more frequently used data.
- Worked best for this workload.
## 2GB
- Cache management overhead, decrease in throughput compared to 1GB cache.
- Cache size more than size of hot data is not frequently used.
## 4GB
- Cache management overhead + large cache 
---
- Best for: current workload with best throughput.
- Do not allocate it based on total DB size. Allocate it based on the size of your active working set (indices and bloom filters).
- Keep track of cache hit rate, if it do not increase significantly with the cache size, there is no technical reason to increase it.

- Ensure `cache_index_and_filter_blocks = true` to protect most vital metadata.