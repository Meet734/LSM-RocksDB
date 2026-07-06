#!/bin/bash
set -e

DB_DIR="$HOME/mtech-research/data/baseline"
RESULTS_DIR="$HOME/mtech-research/results/baseline"
mkdir -p "$DB_DIR" "$RESULTS_DIR"

# Phase 1: Load data
echo "=== PHASE 1: LOAD ==="
./db_bench \
  --benchmarks=fillrandom \
  --num=1000000 \
  --value_size=1024 \
  --db="$DB_DIR" \
  --duration=60 \
  --statistics \
  --stats_dump_period_sec=10 \
  2>&1 | tee "$RESULTS_DIR/load.log"

# Phase 2: Write-heavy benchmark (80% write, 20% read)
echo "=== PHASE 2: WRITE-HEAVY ==="
./db_bench \
  --benchmarks=readwhilewriting \
  --use_existing_db=1 \
  --num=1000000 \
  --value_size=1024 \
  --db="$DB_DIR" \
  --duration=1800 \
  --threads=4 \
  --readwritepercent=20 \
  --statistics \
  --stats_dump_period_sec=30 \
  2>&1 | tee "$RESULTS_DIR/write_heavy.log"

echo "=== DONE ==="
