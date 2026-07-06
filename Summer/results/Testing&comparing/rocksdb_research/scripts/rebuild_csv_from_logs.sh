#!/bin/bash

OUT=~/rocksdb_research/csv/recovered_results.csv

echo "scale,experiment_group,experiment_name,throughput_ops,db_size_mb,flush_count,flush_time_ms,compaction_count,compaction_time_ms,bytes_per_write,stall_micros,l0_files" > "$OUT"

find ~/rocksdb_research/logs -name "*.log" | while read LOGFILE
do
    SCALE=$(basename "$(dirname "$LOGFILE")")
    NAME=$(basename "$LOGFILE" .log)
    GROUP=$(echo "$NAME" | cut -d'_' -f1)

    ########################################################
    # Throughput
    ########################################################

    THROUGHPUT=$(grep "ops/second" "$LOGFILE" \
        | tail -16 \
        | sed -E 's/.*ops and \(([0-9.]+),([0-9.]+)\) ops\/second.*/\2/' \
        | awk '{sum += $1} END {print int(sum)}')

    ########################################################
    # Flush metrics
    ########################################################

    FLUSH_COUNT=$(grep "^rocksdb.db.flush.micros" "$LOGFILE" \
        | awk -F'COUNT :' '{print $2}' \
        | awk '{print $1}')

    FLUSH_TIME_US=$(grep "^rocksdb.db.flush.micros" "$LOGFILE" \
        | awk -F'SUM :' '{print $2}' \
        | xargs)

    ########################################################
    # Compaction metrics
    ########################################################

    COMPACTION_COUNT=$(grep "^rocksdb.file.write.compaction.micros" "$LOGFILE" \
        | awk -F'COUNT :' '{print $2}' \
        | awk '{print $1}')

    COMPACTION_TIME_US=$(grep "^rocksdb.file.write.compaction.micros" "$LOGFILE" \
        | awk -F'SUM :' '{print $2}' \
        | xargs)

    ########################################################
    # Bytes per write
    ########################################################

    BYTES_PER_WRITE=$(grep "^rocksdb.bytes.per.write" "$LOGFILE" \
        | awk -F'P50 :' '{print $2}' \
        | awk '{print $1}')

    ########################################################
    # Stall time
    ########################################################

    STALL_MICROS=$(grep "^rocksdb.stall.micros" "$LOGFILE" \
        | awk -F'COUNT :' '{print $2}' \
        | xargs)

    ########################################################
    # Database size estimate
    ########################################################

    DBSIZE=$(grep "^rocksdb.bytes.per.write" "$LOGFILE" >/dev/null && \
             du -sm ~/rocksdb_research/db 2>/dev/null | awk '{print $1}')

    ########################################################
    # Ignore incomplete runs
    ########################################################

    if [[ -z "$FLUSH_COUNT" || -z "$COMPACTION_COUNT" || -z "$BYTES_PER_WRITE" ]]
    then
        continue
    fi

    FLUSH_TIME_MS=$((FLUSH_TIME_US / 1000))
    COMPACTION_TIME_MS=$((COMPACTION_TIME_US / 1000))

    [[ -z "$THROUGHPUT" ]] && THROUGHPUT=0
    [[ -z "$DBSIZE" ]] && DBSIZE=0
    [[ -z "$STALL_MICROS" ]] && STALL_MICROS=0

    echo "$SCALE,$GROUP,$NAME,$THROUGHPUT,$DBSIZE,$FLUSH_COUNT,$FLUSH_TIME_MS,$COMPACTION_COUNT,$COMPACTION_TIME_MS,$BYTES_PER_WRITE,$STALL_MICROS,0" \
    >> "$OUT"
done
