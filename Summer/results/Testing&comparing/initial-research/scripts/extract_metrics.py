#!/usr/bin/env python3
import sys, re

def parse_log(filepath):
    with open(filepath) as f:
        content = f.read()
    
    metrics = {}
    
    # Throughput
    m = re.search(r'readwhilewriting\s*:\s*([\d.]+)\s+micros/op\s+([\d.]+)\s+ops/sec', content)
    if m:
        metrics['latency_us'] = float(m.group(1))
        metrics['ops_sec'] = float(m.group(2))
    
    # Also check for deleterandom/readrandom throughput
    m = re.search(r'deleterandom\s*:\s*([\d.]+)\s+micros/op\s+([\d.]+)\s+ops/sec', content)
    if m:
        metrics['delete_latency_us'] = float(m.group(1))
        metrics['delete_ops_sec'] = float(m.group(2))
    
    m = re.search(r'readrandom\s*:\s*([\d.]+)\s+micros/op\s+([\d.]+)\s+ops/sec', content)
    if m:
        metrics['read_latency_us'] = float(m.group(1))
        metrics['read_ops_sec'] = float(m.group(2))
    
    # Parse statistics
    for line in content.split('\n'):
        if 'rocksdb.bytes.written COUNT' in line:
            metrics['bytes_written'] = int(line.split(':')[-1].strip())
        elif 'rocksdb.compact.write.bytes COUNT' in line:
            metrics['compact_write_bytes'] = int(line.split(':')[-1].strip())
        elif 'rocksdb.flush.write.bytes COUNT' in line:
            metrics['flush_write_bytes'] = int(line.split(':')[-1].strip())
        elif 'rocksdb.number.keys.written COUNT' in line:
            metrics['keys_written'] = int(line.split(':')[-1].strip())
        elif 'rocksdb.number.keys.read COUNT' in line:
            metrics['keys_read'] = int(line.split(':')[-1].strip())
        elif 'rocksdb.bytes.read COUNT' in line:
            metrics['bytes_read'] = int(line.split(':')[-1].strip())
        elif 'rocksdb.compaction.key.drop.obsolete COUNT' in line:
            metrics['obsolete_dropped'] = int(line.split(':')[-1].strip())
    
    # Calculate metrics
    if 'compact_write_bytes' in metrics and 'flush_write_bytes' in metrics:
        metrics['total_disk_write'] = metrics['compact_write_bytes'] + metrics['flush_write_bytes']
        metrics['cor'] = metrics['compact_write_bytes'] / metrics['flush_write_bytes'] if metrics['flush_write_bytes'] > 0 else 0
    
    # Read latency
    m = re.search(r'rocksdb.db.get.micros P50 : ([\d.]+) P95 : ([\d.]+) P99 : ([\d.]+)', content)
    if m:
        metrics['read_p50'] = float(m.group(1))
        metrics['read_p95'] = float(m.group(2))
        metrics['read_p99'] = float(m.group(3))
    
    # Write latency
    m = re.search(r'rocksdb.db.write.micros P50 : ([\d.]+) P95 : ([\d.]+) P99 : ([\d.]+)', content)
    if m:
        metrics['write_p50'] = float(m.group(1))
        metrics['write_p95'] = float(m.group(2))
        metrics['write_p99'] = float(m.group(3))
    
    return metrics

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Usage: python3 extract_metrics.py <logfile>")
        sys.exit(1)
    
    metrics = parse_log(sys.argv[1])
    for k, v in metrics.items():
        if isinstance(v, float):
            print(f"{k}: {v:.2f}")
        else:
            print(f"{k}: {v}")
