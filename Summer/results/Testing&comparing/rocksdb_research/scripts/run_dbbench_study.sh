#!/bin/bash

############################################################
# Paths
############################################################

DB_BENCH=~/mtech-research/rocksdb/build/db_bench

ROOT=~/rocksdb_research

DBDIR=/mnt/d/rocksdb_research/db
LOGDIR=$ROOT/logs
RESULTS=$ROOT/csv/master_results.csv

mkdir -p "$DBDIR"
mkdir -p "$LOGDIR"
mkdir -p "$(dirname "$RESULTS")"

############################################################
# Scale selection
############################################################

SCALE=$1

case "$SCALE" in
    1M)
        NUM=1000000
        ;;
    10M)
        NUM=10000000
        ;;
    50M)
        NUM=50000000
        ;;
    100M)
        NUM=100000000
        ;;
    *)
        echo
        echo "Usage:"
        echo "./run_dbbench_study.sh {1M|10M|50M|100M}"
        echo
        exit 1
        ;;
esac

mkdir -p "$LOGDIR/$SCALE"

############################################################
# Cleanup
############################################################

cleanup_db() {

    echo
    echo "Cleaning database..."
    rm -rf "$DBDIR"/*

    sync

    if [[ -w /proc/sys/vm/drop_caches ]]; then
        echo 3 | sudo tee /proc/sys/vm/drop_caches >/dev/null
    fi

    sleep 10

    echo "Disk usage after cleanup:"
    du -sh "$DBDIR"
    echo
}

############################################################
# Benchmark runner
############################################################

run_test() {

    GROUP=$1
    NAME=$2
    EXTRA_ARGS=$3

    LOGFILE="$LOGDIR/$SCALE/$NAME.log"

    echo
    echo "================================================"
    echo "Running: $NAME"
    echo "Scale: $SCALE"
    echo "================================================"

    rm -rf "$DBDIR"/*

    "$DB_BENCH" \
        --benchmarks=fillrandom \
        --db="$DBDIR" \
        --num="$NUM" \
        --threads=16 \
        --value_size=1024 \
        --statistics=1 \
        --stats_interval_seconds=60 \
        --compression_type=lz4 \
        --write_buffer_size=67108864 \
        --max_write_buffer_number=4 \
        --target_file_size_base=67108864 \
        --max_background_jobs=4 \
        --cache_size=1073741824 \
        $EXTRA_ARGS \
        > "$LOGFILE" 2>&1

    ########################################################
    # Metric Extraction
    ########################################################

    THROUGHPUT=$(grep "ops/sec" "$LOGFILE" | tail -1 | awk '{print $5}')
    [[ -z "$THROUGHPUT" ]] && THROUGHPUT=0

    DBSIZE=$(du -sm "$DBDIR" | awk '{print $1}')

    FLUSH_COUNT=$(grep "rocksdb.db.flush.micros" "$LOGFILE" \
        | awk -F'COUNT :' '{print $2}' \
        | awk '{print $1}')
    [[ -z "$FLUSH_COUNT" ]] && FLUSH_COUNT=0

    FLUSH_TIME_US=$(grep "rocksdb.db.flush.micros" "$LOGFILE" \
        | awk -F'SUM :' '{print $2}' \
        | xargs)
    [[ -z "$FLUSH_TIME_US" ]] && FLUSH_TIME_US=0

    FLUSH_TIME_MS=$((FLUSH_TIME_US / 1000))

    COMPACTION_COUNT=$(grep "rocksdb.file.write.compaction.micros" "$LOGFILE" \
        | awk -F'COUNT :' '{print $2}' \
        | awk '{print $1}')
    [[ -z "$COMPACTION_COUNT" ]] && COMPACTION_COUNT=0

    COMPACTION_TIME_US=$(grep "rocksdb.file.write.compaction.micros" "$LOGFILE" \
        | awk -F'SUM :' '{print $2}' \
        | xargs)
    [[ -z "$COMPACTION_TIME_US" ]] && COMPACTION_TIME_US=0

    COMPACTION_TIME_MS=$((COMPACTION_TIME_US / 1000))

    BYTES_PER_WRITE=$(grep "rocksdb.bytes.per.write" "$LOGFILE" \
        | awk -F'P50 :' '{print $2}' \
        | awk '{print $1}')
    [[ -z "$BYTES_PER_WRITE" ]] && BYTES_PER_WRITE=0

    STALL_MICROS=$(grep "^rocksdb.stall.micros" "$LOGFILE" \
        | awk -F'COUNT :' '{print $2}' \
        | xargs)
    [[ -z "$STALL_MICROS" ]] && STALL_MICROS=0

    L0_FILES=$(grep "L0 files" "$LOGFILE" \
        | tail -1 \
        | awk '{print $NF}')
    [[ -z "$L0_FILES" ]] && L0_FILES=0

    echo "$SCALE,$GROUP,$NAME,\
$THROUGHPUT,$DBSIZE,\
$FLUSH_COUNT,$FLUSH_TIME_MS,\
$COMPACTION_COUNT,$COMPACTION_TIME_MS,\
$BYTES_PER_WRITE,$STALL_MICROS,$L0_FILES" \
>> "$RESULTS"

    echo "[DONE] $NAME"

    cleanup_db
}

############################################################
# Compression
############################################################

run_test compression compression_none \
"--compression_type=none"

run_test compression compression_snappy \
"--compression_type=snappy"

run_test compression compression_lz4 \
"--compression_type=lz4"

run_test compression compression_zstd \
"--compression_type=zstd"

############################################################
# Memtable
############################################################

run_test memtable memtable_64 \
"--write_buffer_size=67108864"

run_test memtable memtable_128 \
"--write_buffer_size=134217728"

run_test memtable memtable_256 \
"--write_buffer_size=268435456"

run_test memtable memtable_512 \
"--write_buffer_size=536870912"

############################################################
# Background Jobs
############################################################

run_test bgjobs bgjobs_2 \
"--max_background_jobs=2"

run_test bgjobs bgjobs_4 \
"--max_background_jobs=4"

run_test bgjobs bgjobs_8 \
"--max_background_jobs=8"

run_test bgjobs bgjobs_16 \
"--max_background_jobs=16"

############################################################
# Cache
############################################################

run_test cache cache_512 \
"--cache_size=536870912"

run_test cache cache_1024 \
"--cache_size=1073741824"

run_test cache cache_2048 \
"--cache_size=2147483648"

run_test cache cache_4096 \
"--cache_size=4294967296"

############################################################
# Direct IO
############################################################

run_test directio directio_off ""

run_test directio directio_on \
"--use_direct_reads=true \
 --use_direct_io_for_flush_and_compaction=true"

############################################################
# Compaction
############################################################

run_test compaction compaction_level \
"--compaction_style=0"

run_test compaction compaction_universal \
"--compaction_style=1"

run_test compaction compaction_fifo \
"--compaction_style=2"

echo
echo "========================================="
echo "STUDY COMPLETE"
echo "Scale: $SCALE"
echo "========================================="
echo
