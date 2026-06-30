## 1. **YCSB Workloads**
| YCSB Workload                     | db\_bench Equivalent           | Command Pattern                                                       |
| --------------------------------- | ------------------------------ | --------------------------------------------------------------------- |
| **YCSB A** (50% read, 50% update) | `readrandomwriterandom`        | `--benchmarks=fillrandom,readrandomwriterandom --readwritepercent=50` |
| **YCSB B** (95% read, 5% update)  | `readrandomwriterandom`        | `--readwritepercent=95`                                               |
| **YCSB C** (100% read)            | `readrandom`                   | `--benchmarks=fillrandom,readrandom`                                  |
| **YCSB D** (read-latest)          | `readrandom` + recent key bias | Custom key generator needed                                           |
| **YCSB E** (95% scan, 5% insert)  | `seekrandom`                   | `--benchmarks=fillrandom,seekrandom --seek_nexts=50`                  |
| **YCSB F** (50% RMW, 50% read)    | `updaterandom`                 | `--benchmarks=fillrandom,updaterandom`                                |
