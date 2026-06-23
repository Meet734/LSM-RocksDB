| Metric                           | Write-Heavy  | Mixed        | Delete-Heavy (Del) | Delete-Heavy (Read) |
| -------------------------------- | ------------ | ------------ | ------------------ | ------------------- |
| **Throughput**                   | 51,211 ops/s | 51,262 ops/s | 542,269 ops/s      | 1,349,122 ops/s     |
| **Write P50**                    | 3.93 µs      | 3.91 µs      | 5.81 µs            | —                   |
| **Write P99**                    | 14.93 µs     | 18.50 µs     | 22.78 µs           | —                   |
| **Read P50**                     | 69.87 µs     | 68.33 µs     | —                  | 2.02 µs             |
| **Read P99**                     | 246.11 µs    | 249.09 µs    | —                  | 5.88 µs             |
| **Compaction/Flush Ratio (COR)** | **1.62**     | **1.61**     | **1.72**           | —                   |
| **Keys Written**                 | 34.7M        | 33.7M        | 97.6M              | —                   |
| **Keys Read**                    | 15.4M        | 15.4M        | —                  | 161.9M              |
| **Obsolete Dropped**             | 0            | 0            | **33.6M**          | —                   |

```shell
meet@DESKTOP-20D4N8C:~/mtech-research/rocksdb/build$ echo "=== Write-Heavy ==="
python3 ~/mtech-research/scripts/extract_metrics.py ~/mtech-research/results/baseline-wh/run.log

echo "=== Mixed ==="
python3 ~/mtech-research/scripts/extract_metrics.py ~/mtech-research/results/baseline-mixed/run.log

echo "=== Delete-Heavy (Delete Phase) ==="
python3 ~/mtech-research/scripts/extract_metrics.py ~/mtech-research/results/baseline-del/delete.log

echo "=== Delete-Heavy (Read Phase) ==="
python3 ~/mtech-research/scripts/extract_metrics.py ~/mtech-research/results/baseline-del/read.log
=== Write-Heavy ===
latency_us: 78.10
ops_sec: 51211.00
obsolete_dropped: 0
keys_written: 34719351
keys_read: 15367996
bytes_written: 36663634656
bytes_read: 15736827904
compact_write_bytes: 33404989577
flush_write_bytes: 20593595538
total_disk_write: 53998585115
cor: 1.62
read_p50: 69.87
read_p95: 184.37
read_p99: 246.11
write_p50: 3.93
write_p95: 9.36
write_p99: 14.93

=== Mixed ===
latency_us: 78.02
ops_sec: 51262.00
obsolete_dropped: 0
keys_written: 33705962
keys_read: 15381996
bytes_written: 35593495872
bytes_read: 15751163904
compact_write_bytes: 32238693993
flush_write_bytes: 20002245954
total_disk_write: 52240939947
cor: 1.61
read_p50: 68.33
read_p95: 190.38
read_p99: 249.09
write_p50: 3.91
write_p95: 9.51
write_p99: 18.50

=== Delete-Heavy (Delete Phase) ===
delete_latency_us: 7.38
delete_ops_sec: 542269.00
obsolete_dropped: 33557676
keys_written: 97610996
keys_read: 0
bytes_written: 2477349984
bytes_read: 0
compact_write_bytes: 864565470
flush_write_bytes: 502290738
total_disk_write: 1366856208
cor: 1.72
read_p50: 0.00
read_p95: 0.00
read_p99: 0.00
write_p50: 5.81
write_p95: 12.13
write_p99: 22.78

=== Delete-Heavy (Read Phase) ===
read_latency_us: 2.96
read_ops_sec: 1349122.00
obsolete_dropped: 0
keys_written: 0
keys_read: 161897996
bytes_written: 0
bytes_read: 0
compact_write_bytes: 7752230
flush_write_bytes: 0
total_disk_write: 7752230
cor: 0
read_p50: 2.02
read_p95: 4.79
read_p99: 5.88
write_p50: 0.00
write_p95: 0.00
write_p99: 0.00
```