| Phase                         | Configuration               | Resulting Size                                 |
| ----------------------------- | --------------------------- | ---------------------------------------------- |
| **Unique keys**               | 1,000,000 (`--num=1000000`) | 1M distinct keys                               |
| **Key size**                  | 16 bytes                    | -                                              |
| **Value size**                | 1024 bytes (1 KB)           | -                                              |
| **Raw data size**             | ~1 GB uncompressed          | 1M × 1040 bytes                                |
| **Compressed data size**      | ~500 MB                     | Snappy compression ~2:1 ratio                  |
| **Actual on-disk after load** | ~500 MB                     | Reported by `db_bench` as `FileSize: 503.5 MB` |
