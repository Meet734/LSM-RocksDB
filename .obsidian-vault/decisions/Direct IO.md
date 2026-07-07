- Storage access method that allows DB to bypass the OS "Page Cache" and communicate directly with the storage hardware.
## 1. Buffered I/O (Default)
- Normal RocksDB requests data from a file, OS kernel intercepts that request. It checks if the data is already in the OS Page Cache.
- If data is present OS serves it.
- If not, then OS fetches from disk + put into cache then hands it to RocksDB.
- OS level memory cache -> better throughput
## 2. Direct I/O
- Telling RocksDB not to use the OS page cache, go to SSD for every single read.
- prevents double caching gives the DB total control over memory.
- Causes significant drop in throughput compared to Buffered.