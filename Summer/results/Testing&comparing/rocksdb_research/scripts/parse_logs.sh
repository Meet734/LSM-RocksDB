#!/bin/bash

LOGDIR=~/rocksdb_research/logs
RESULTS=~/rocksdb_research/csv/master_results.csv

echo "experiment_group,experiment_name,throughput_ops,db_size_mb,flush_count,flush_time_ms,compaction_count,compaction_time_ms,bytes_per_write,stall_micros,l0_files" > "$RESULTS"

for LOGFILE in "$LOGDIR"/*.log
do
    NAME=$(basename "$LOGFILE" .log)

    GROUP=$(echo "$NAME" | cut -d'_' -f1)

    THROUGHPUT=$(grep "ops/sec" "$LOGFILE" | tail -1 | awk '{print $5}')

    DBSIZE=$(du -sm ~/rocksdb_research/db | awk '{print $1}')

    FLUSH_COUNT=$(grep "rocksdb.db.flush.micros" "$LOGFILE" \
        | awk -F'COUNT :' '{print $2}' \
        | awk '{print $1}')

    FLUSH_TIME_US=$(grep "rocksdb.db.flush.micros" "$LOGFILE" \
        | awk -F'SUM :' '{print $2}' \
        | xargs)

    FLUSH_TIME_MS=$((FLUSH_TIME_US / 1000))

    COMPACTION_COUNT=$(grep "rocksdb.file.write.compaction.micros" "$LOGFILE" \
        | awk -F'COUNT :' '{print $2}' \
        | awk '{print $1}')

    COMPACTION_TIME_US=$(grep "rocksdb.file.write.compaction.micros" "$LOGFILE" \
        | awk -F'SUM :' '{print $2}' \
        | xargs)

    COMPACTION_TIME_MS=$((COMPACTION_TIME_US / 1000))

    BYTES_PER_WRITE=$(grep "rocksdb.bytes.per.write" "$LOGFILE" \
        | awk -F'P50 :' '{print $2}' \
        | awk '{print $1}')

    STALL_MICROS=$(grep "^rocksdb.stall.micros" "$LOGFILE" \
        | awk -F'COUNT :' '{print $2}' \
        | xargs)

    [[ -z "$STALL_MICROS" ]] && STALL_MICROS=0

    L0_FILES=0

    echo "$GROUP,$NAME,$THROUGHPUT,$DBSIZE,\
$FLUSH_COUNT,$FLUSH_TIME_MS,\
$COMPACTION_COUNT,$COMPACTION_TIME_MS,\
$BYTES_PER_WRITE,$STALL_MICROS,$L0_FILES" >> "$RESULTS"

done

echo "Parsing complete."
