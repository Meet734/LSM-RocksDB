#!/bin/bash

SCRIPT=~/rocksdb_research/scripts/run_dbbench_study.sh

SCALES=(
    10M
    50M
    100M
)

START=$(date)

echo "==============================================="
echo "RocksDB Full Parameter Study"
echo "Started : $START"
echo "==============================================="

for SCALE in "${SCALES[@]}"
do
    echo
    echo "###############################################"
    echo "Starting scale: $SCALE"
    echo "Started at: $(date)"
    echo "###############################################"

    "$SCRIPT" "$SCALE"

    echo
    echo "Completed scale: $SCALE"
    echo "Finished at: $(date)"

    echo
    echo "Performing full cleanup..."

    rm -rf ~/rocksdb_research/db/*

    sync

    sudo sh -c "echo 3 > /proc/sys/vm/drop_caches"

    sleep 60

    echo "Disk usage after cleanup:"
    du -sh ~/rocksdb_research/db
done

echo
echo "==============================================="
echo "FULL STUDY COMPLETE"
echo "Finished : $(date)"
echo "==============================================="
