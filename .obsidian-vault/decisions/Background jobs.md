- Results says that throughput increases as the background threads increases.
- System utilizes more threads for compaction and flushing.
- Tail latency shows consistent decrease.
- Stall time goes high, because after some time it lead to thrashing and lock contention
## 2 threads
- `bgjobs_2`
- Few threads to keep pace with writes, leading to write slowdown or stalls.
## 4 threads
- `bgjobs_4`
- significant increase from `2 threads`.
- Enough threads but still may cause write slowdown and starve foreground worker threads.
## 8 threads
- `bgjobs_8`
- Enough threads for foreground processes not to slow down, while maintaining low context switch overhead.
## 16 threads
- `bgjobs_16`
- Throughput increases but rate of increase slow down.
- Tail latency `p99`
---
- At any time, if stall time remains high do not add more threads. Instead, increase `level0_file_num_compaction_trigger` to give DB some more time before stall.