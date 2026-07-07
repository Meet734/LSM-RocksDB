- Creates direct trade-off between Write throughput and Read/Compaction latency.
- Larger Memtables = Few Flushes and few large SST files at Level 0.
- Write throughput increase (Less time in I/O)
- By delying flushes, flush spike is larger -> if used in limited threads environment, it may cause write stall.
- Throughput -> ops/second increases as the memtable size.
- It only decreased for memtable_size = 128MB, then again increased.

## 1. 64MB
- Small flushes -> small L0 SST files -> Background compaction threads can process these quickly -> keeps read latency low & throughput stable.
## 2. 128MB
- Somewhat larger SST files at level 0.
- Don't quickly trigger compaction and not efficient for merge-sort.
- Likely hitting slowdown_write_trigger to catch up on merging moderately large files in numbers.
## 3. 256 MB
- It is "Batch Efficiency" zone.
- Large enough chunks of data to perform bulk merge-sort, instead of numerous small operations.
---
- Flush count nearly halves as memtable size doubles
- Stall time peaked for 128MB size, that confirms RocksDB stalling to manage compactions.
- Compaction_time is higher for 256MB, but throughput remains high, because compaction is more efficient.

- Current max_background_jobs and level0_compaction_trigger is optimized for 64MB, 256MB and 512MB and not for 256MB.
- Throughput peak for 256-512MB by delaying compaction + efficient bulk merge-sort but, stale versions of data remains for long.
- In results 512MB cause DB size nearly double compared to 256MB.