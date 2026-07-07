- Level Compaction: Fully compacted database for fastest read performance.
- Universal Compaction: Requires fewer compaction passes than level style, but can take ~2x space amplification and slower read performance.
- FIFO Compaction: ~96% of keys dropped by time.
---
## Best for:
- Level compaction: General purpose workloads, requiring higher read performance.
- Universal compaction: Best for the workloads with higher update rates where resucing frequency of background merges is prioritized over disk space.
- FIFO: TTL workload