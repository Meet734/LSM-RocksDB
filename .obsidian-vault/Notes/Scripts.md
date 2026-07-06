```shell
#!/bin/bash

OUTPUT_FILE="read_path_results.md"
DB_DIR="./test_data"
WAL_DIR="./test_wal"
NUM_ENTRIES=10000000
THREADS=8
BENCHMARKS="fillseq,readrandom,readseq"

echo "# RocksDB Read Path & Block Cache Tuning Results" > "$OUTPUT_FILE"
echo "**Started at:** $(date)" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

run_test() {
    local test_name="$1"
    local custom_flags="$2"

    echo "Running: $test_name..."
    echo "## $test_name" >> "$OUTPUT_FILE"
    echo "**Command Flags:** \`$custom_flags\`" >> "$OUTPUT_FILE"
    echo '```text' >> "$OUTPUT_FILE"

    rm -rf "$DB_DIR" "$WAL_DIR"

    ./db_bench \
        --benchmarks="$BENCHMARKS" \
        --db="$DB_DIR" \
        --wal_dir="$WAL_DIR" \
        --num=$NUM_ENTRIES \
        --reads=5000000 \
        --threads=$THREADS \
        --statistics=1 \
        $custom_flags 2>&1 | tee -a "$OUTPUT_FILE"

    echo '```' >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
    echo "---" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
}

run_test "Cache Size - 512MB" "--cache_size=536870912"
run_test "Cache Size - 2GB" "--cache_size=2147483648"

run_test "Index/Filter in Cache" \
    "--cache_size=2147483648 \
     --cache_index_and_filter_blocks=1"

run_test "Pin L0 Filters" \
    "--cache_size=2147483648 \
     --cache_index_and_filter_blocks=1 \
     --pin_l0_filter_and_index_blocks_in_cache=1"

run_test "Block Size - 4KB (Default)" \
    "--cache_size=2147483648 \
     --block_size=4096"

run_test "Block Size - 64KB (Good for Scans)" \
    "--cache_size=2147483648 \
     --block_size=65536"

echo "Read-path tests completed. Results saved to $OUTPUT_FILE."
```

```shell
#!/bin/bash

OUTPUT_FILE="bloom_filter_results.md"
DB_DIR="./test_data"
WAL_DIR="./test_wal"
NUM_ENTRIES=10000000
READS=5000000
THREADS=8
BENCHMARKS="fillseq,readrandom,readmissing"

echo "# RocksDB Bloom Filter Tuning Results" > "$OUTPUT_FILE"
echo "**Started at:** $(date)" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

run_test() {
    local test_name="$1"
    local custom_flags="$2"

    echo "Running: $test_name..."
    echo "## $test_name" >> "$OUTPUT_FILE"
    echo "**Command Flags:** \`$custom_flags\`" >> "$OUTPUT_FILE"
    echo '```text' >> "$OUTPUT_FILE"

    rm -rf "$DB_DIR" "$WAL_DIR"

    ./db_bench \
        --benchmarks="$BENCHMARKS" \
        --db="$DB_DIR" \
        --wal_dir="$WAL_DIR" \
        --num=$NUM_ENTRIES \
        --reads=$READS \
        --threads=$THREADS \
        --statistics=1 \
        $custom_flags 2>&1 | tee -a "$OUTPUT_FILE"

    echo '```' >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
    echo "---" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
}

run_test "Bloom Filter - 5 Bits/Key" \
    "--cache_size=2147483648 \
     --bloom_bits=5"

run_test "Bloom Filter - 10 Bits/Key (Standard Default)" \
    "--cache_size=2147483648 \
     --bloom_bits=10"

run_test "Bloom Filter - 16 Bits/Key" \
    "--cache_size=2147483648 \
     --bloom_bits=16"

run_test "Whole Key Filtering - Enabled" \
    "--cache_size=2147483648 \
     --bloom_bits=10 \
     --whole_key_filtering=1"

run_test "Whole Key Filtering - Disabled (Prefix only)" \
    "--cache_size=2147483648 \
     --bloom_bits=10 \
     --whole_key_filtering=0"

echo "Bloom filter tests completed. Results saved to $OUTPUT_FILE."
```

```shell
#!/bin/bash

OUTPUT_FILE="wal_durability_results.md"
DB_DIR="./test_data"
WAL_DIR="./test_wal"
# Crucial: Kept at 100k to prevent SSD lockup during fillsync
NUM_ENTRIES=100000 
THREADS=8

echo "# RocksDB WAL & Durability Tuning Results" > "$OUTPUT_FILE"
echo "**Started at:** $(date)" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

run_test() {
    local test_name="$1"
    local benchmarks="$2"
    local custom_flags="$3"

    echo "Running: $test_name..."
    echo "## $test_name" >> "$OUTPUT_FILE"
    echo "**Benchmarks:** \`$benchmarks\`" >> "$OUTPUT_FILE"
    echo "**Command Flags:** \`$custom_flags\`" >> "$OUTPUT_FILE"
    echo '```text' >> "$OUTPUT_FILE"

    rm -rf "$DB_DIR" "$WAL_DIR"

    ./db_bench \
        --benchmarks="$benchmarks" \
        --db="$DB_DIR" \
        --wal_dir="$WAL_DIR" \
        --num=$NUM_ENTRIES \
        --threads=$THREADS \
        --statistics=1 \
        $custom_flags 2>&1 | tee -a "$OUTPUT_FILE"

    echo '```' >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
    echo "---" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
}

run_test "WAL Sync - 0 Bytes (Default)" \
    "fillsync,fillrandom" \
    "--wal_bytes_per_sync=0"

run_test "WAL Sync - 1MB" \
    "fillsync,fillrandom" \
    "--wal_bytes_per_sync=1048576"

run_test "WAL Sync - 8MB" \
    "fillsync,fillrandom" \
    "--wal_bytes_per_sync=8388608"

run_test "Manual WAL Flush - Disabled (Default)" \
    "fillrandom" \
    "--manual_wal_flush=0"

run_test "Manual WAL Flush - Enabled" \
    "fillrandom" \
    "--manual_wal_flush=1"

run_test "WAL Enabled (Baseline)" \
    "fillseq,fillrandom" \
    "--disable_wal=0"

run_test "WAL Disabled (No Crash Recovery)" \
    "fillseq,fillrandom" \
    "--disable_wal=1"

echo "WAL and Durability tests completed. Results saved to $OUTPUT_FILE."
```

```shell
#!/bin/bash

OUTPUT_FILE="io_direct_results.md"
DB_DIR="./test_data"
WAL_DIR="./test_wal"
NUM_ENTRIES=5000000
READS=5000000
THREADS=8

echo "# RocksDB I/O & Direct I/O Tuning Results" > "$OUTPUT_FILE"
echo "**Started at:** $(date)" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

run_test() {
    local test_name="$1"
    local benchmarks="$2"
    local custom_flags="$3"

    echo "Running: $test_name..."
    echo "## $test_name" >> "$OUTPUT_FILE"
    echo "**Benchmarks:** \`$benchmarks\`" >> "$OUTPUT_FILE"
    echo "**Command Flags:** \`$custom_flags\`" >> "$OUTPUT_FILE"
    echo '```text' >> "$OUTPUT_FILE"

    # Wipe the database to prevent OS page cache carryover from previous tests
    rm -rf "$DB_DIR" "$WAL_DIR"

    ./db_bench \
        --benchmarks="$benchmarks" \
        --db="$DB_DIR" \
        --wal_dir="$WAL_DIR" \
        --num=$NUM_ENTRIES \
        --reads=$READS \
        --threads=$THREADS \
        --statistics=1 \
        $custom_flags 2>&1 | tee -a "$OUTPUT_FILE"

    echo '```' >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
    echo "---" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
}

# =====================================================================
# Phase 1: Direct Reads (Bypassing OS Page Cache for Read Operations)
# =====================================================================
run_test "Direct Reads - Disabled (OS Page Cache ON)" \
    "fillseq,readseq,readrandom" \
    "--use_direct_reads=0"

run_test "Direct Reads - Enabled (OS Page Cache OFF)" \
    "fillseq,readseq,readrandom" \
    "--use_direct_reads=1"

# =====================================================================
# Phase 2: Direct I/O for Writes (Flushes and Compactions)
# =====================================================================
run_test "Direct I/O Writes - Disabled" \
    "fillrandom,overwrite" \
    "--use_direct_io_for_flush_and_compaction=0"

run_test "Direct I/O Writes - Enabled" \
    "fillrandom,overwrite" \
    "--use_direct_io_for_flush_and_compaction=1"

# =====================================================================
# Phase 3: Bytes Per Sync (Throttling OS dirty page flushing)
# =====================================================================
run_test "Bytes Per Sync - 0 (OS manages flushing)" \
    "fillseq,fillrandom" \
    "--bytes_per_sync=0"

run_test "Bytes Per Sync - 1MB (RocksDB forces flush every 1MB)" \
    "fillseq,fillrandom" \
    "--bytes_per_sync=1048576"

# =====================================================================
# Phase 4: Compaction Readahead
# =====================================================================
run_test "Compaction Readahead - 0 (Default)" \
    "fillrandom" \
    "--compaction_readahead_size=0"

run_test "Compaction Readahead - 2MB" \
    "fillrandom" \
    "--compaction_readahead_size=2097152"

echo "I/O and Direct I/O tests completed safely. Results saved to $OUTPUT_FILE."
```

```shell
#!/bin/bash

OUTPUT_FILE="io_direct_results.md"
DB_DIR="./test_data"
WAL_DIR="./test_wal"
NUM_ENTRIES=5000000
READS=5000000
THREADS=8

echo "# RocksDB I/O & Direct I/O Tuning Results" > "$OUTPUT_FILE"
echo "**Started at:** $(date)" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

run_test() {
    local test_name="$1"
    local benchmarks="$2"
    local custom_flags="$3"

    echo "Running: $test_name..."
    echo "## $test_name" >> "$OUTPUT_FILE"
    echo "**Benchmarks:** \`$benchmarks\`" >> "$OUTPUT_FILE"
    echo "**Command Flags:** \`$custom_flags\`" >> "$OUTPUT_FILE"
    echo '```text' >> "$OUTPUT_FILE"

    # Wipe the database to prevent OS page cache carryover from previous tests
    rm -rf "$DB_DIR" "$WAL_DIR"

    ./db_bench \
        --benchmarks="$benchmarks" \
        --db="$DB_DIR" \
        --wal_dir="$WAL_DIR" \
        --num=$NUM_ENTRIES \
        --reads=$READS \
        --threads=$THREADS \
        --statistics=1 \
        $custom_flags 2>&1 | tee -a "$OUTPUT_FILE"

    echo '```' >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
    echo "---" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
}

# =====================================================================
# Phase 1: Direct Reads (Bypassing OS Page Cache for Read Operations)
# =====================================================================
run_test "Direct Reads - Disabled (OS Page Cache ON)" \
    "fillseq,readseq,readrandom" \
    "--use_direct_reads=0"

run_test "Direct Reads - Enabled (OS Page Cache OFF)" \
    "fillseq,readseq,readrandom" \
    "--use_direct_reads=1"

# =====================================================================
# Phase 2: Direct I/O for Writes (Flushes and Compactions)
# =====================================================================
run_test "Direct I/O Writes - Disabled" \
    "fillrandom,overwrite" \
    "--use_direct_io_for_flush_and_compaction=0"

run_test "Direct I/O Writes - Enabled" \
    "fillrandom,overwrite" \
    "--use_direct_io_for_flush_and_compaction=1"

# =====================================================================
# Phase 3: Bytes Per Sync (Throttling OS dirty page flushing)
# =====================================================================
run_test "Bytes Per Sync - 0 (OS manages flushing)" \
    "fillseq,fillrandom" \
    "--bytes_per_sync=0"

run_test "Bytes Per Sync - 1MB (RocksDB forces flush every 1MB)" \
    "fillseq,fillrandom" \
    "--bytes_per_sync=1048576"

# =====================================================================
# Phase 4: Compaction Readahead
# =====================================================================
run_test "Compaction Readahead - 0 (Default)" \
    "fillrandom" \
    "--compaction_readahead_size=0"

run_test "Compaction Readahead - 2MB" \
    "fillrandom" \
    "--compaction_readahead_size=2097152"

echo "I/O and Direct I/O tests completed safely. Results saved to $OUTPUT_FILE."
```

```shell
#!/bin/bash

OUTPUT_FILE="parallelism_results.md"
DB_DIR="./test_data"
WAL_DIR="./test_wal"

# Capped at 2M to prevent system hang during heavy overwrite/readwhilewriting
NUM_ENTRIES=2000000
# Foreground threads restricted to 4 to leave room for background jobs
FOREGROUND_THREADS=4

echo "# RocksDB Parallelism & Compaction Scaling Results" > "$OUTPUT_FILE"
echo "**Started at:** $(date)" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

run_test() {
    local test_name="$1"
    local benchmarks="$2"
    local custom_flags="$3"

    echo "Running: $test_name..."
    echo "## $test_name" >> "$OUTPUT_FILE"
    echo "**Benchmarks:** \`$benchmarks\`" >> "$OUTPUT_FILE"
    echo "**Command Flags:** \`$custom_flags\`" >> "$OUTPUT_FILE"
    echo '```text' >> "$OUTPUT_FILE"

    # Clean the database to reset the compaction state
    rm -rf "$DB_DIR" "$WAL_DIR"

    ./db_bench \
        --benchmarks="$benchmarks" \
        --db="$DB_DIR" \
        --wal_dir="$WAL_DIR" \
        --num=$NUM_ENTRIES \
        --reads=$NUM_ENTRIES \
        --threads=$FOREGROUND_THREADS \
        --statistics=1 \
        --histogram=1 \
        $custom_flags 2>&1 | tee -a "$OUTPUT_FILE"

    echo '```' >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
    echo "---" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
}

# =====================================================================
# Phase 1: Background Jobs Scaling (Flushes & Compactions)
# Note: Pushing to 32 on a 12-core system tests the penalty of over-provisioning
# =====================================================================
run_test "Background Jobs - 4 (Baseline)" \
    "fillrandom,readwhilewriting" \
    "--max_background_jobs=4"

run_test "Background Jobs - 8" \
    "fillrandom,readwhilewriting" \
    "--max_background_jobs=8"

run_test "Background Jobs - 16" \
    "fillrandom,readwhilewriting" \
    "--max_background_jobs=16"

run_test "Background Jobs - 32 (Expect High Context Switching)" \
    "fillrandom,readwhilewriting" \
    "--max_background_jobs=32"

# =====================================================================
# Phase 2: Subcompactions (Parallelizing large L0 -> L1 compactions)
# =====================================================================
# We use max_background_jobs=8 as a safe base for the subcompaction tests
BASE_JOBS="--max_background_jobs=8"

run_test "Subcompactions - 1 (Default)" \
    "fillrandom,overwrite" \
    "$BASE_JOBS --subcompactions=1"

run_test "Subcompactions - 4" \
    "fillrandom,overwrite" \
    "$BASE_JOBS --subcompactions=4"

run_test "Subcompactions - 8" \
    "fillrandom,overwrite" \
    "$BASE_JOBS --subcompactions=8"

echo "Parallelism scaling tests completed safely. Results saved to $OUTPUT_FILE."
```

```shell
#!/bin/bash

OUTPUT_FILE="overnight_master_results.md"
DB_DIR="./overnight_data"
WAL_DIR="./overnight_wal"

# 50M entries = ~5.5GB database. Will force real compaction debt over hours.
NUM_ENTRIES=50000000
READS=50000000
# 6 Foreground + 4 Background = 10 Cores. Leaves 2 for OS survival.
FOREGROUND_THREADS=6

echo "# RocksDB Overnight Sustained Benchmarks" > "$OUTPUT_FILE"
echo "**Started at:** $(date)" >> "$OUTPUT_FILE"
echo "Targeting 50M entries per phase." >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

run_phase() {
    local phase_name="$1"
    local benchmarks="$2"
    local custom_flags="$3"

    echo "Starting Phase: $phase_name at $(date)"
    echo "## $phase_name" >> "$OUTPUT_FILE"
    echo "**Benchmarks:** \`$benchmarks\`" >> "$OUTPUT_FILE"
    echo "**Configuration:** \`$custom_flags\`" >> "$OUTPUT_FILE"
    echo '```text' >> "$OUTPUT_FILE"

    # Strict wipe to ensure pristine state per phase
    rm -rf "$DB_DIR" "$WAL_DIR"
    
    # Let OS clear dirty pages and SSD flush SLC cache before next heavy I/O
    sleep 60 

    ./db_bench \
        --benchmarks="$benchmarks" \
        --db="$DB_DIR" \
        --wal_dir="$WAL_DIR" \
        --num=$NUM_ENTRIES \
        --reads=$READS \
        --threads=$FOREGROUND_THREADS \
        --statistics=1 \
        --histogram=1 \
        --stats_dump_period_sec=600 \
        $custom_flags 2>&1 | tee -a "$OUTPUT_FILE"

    echo '```' >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
    echo "---" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
}

# =====================================================================
# Phase 1: The Baseline (Default Settings)
# Will likely suffer severe compaction stalls and high tail latency
# =====================================================================
run_phase "1. Default Baseline" \
    "fillrandom,readwhilewriting" \
    "--max_background_jobs=4"

# =====================================================================
# Phase 2: Read & Filter Optimized (From Case 3 & 4)
# 10 bits/key, pinned L0, 4KB blocks (optimized for point lookups)
# =====================================================================
run_phase "2. Read & Bloom Filter Optimized" \
    "fillrandom,readwhilewriting,readrandom" \
    "--max_background_jobs=4 \
     --bloom_bits=10 \
     --cache_index_and_filter_blocks=1 \
     --pin_l0_filter_and_index_blocks_in_cache=1 \
     --block_size=4096"

# =====================================================================
# Phase 3: Write & Compaction Optimized (From Case 1 & 2)
# Larger buffers, relaxed triggers, parallel subcompactions
# =====================================================================
run_phase "3. Write Amp & Compaction Optimized" \
    "fillrandom,overwrite" \
    "--max_background_jobs=4 \
     --subcompactions=4 \
     --write_buffer_size=134217728 \
     --max_write_buffer_number=8 \
     --level0_file_num_compaction_trigger=8 \
     --level0_slowdown_writes_trigger=40 \
     --level0_stop_writes_trigger=72 \
     --max_bytes_for_level_base=536870912"

# =====================================================================
# Phase 4: The "Golden Config" (Sustained Mixed Workload)
# Combines all optimal parameters to test peak theoretical throughput
# =====================================================================
run_phase "4. The Golden Config (Sustained R/W)" \
    "fillseq,readwhilewriting" \
    "--max_background_jobs=4 \
     --subcompactions=4 \
     --bloom_bits=10 \
     --cache_index_and_filter_blocks=1 \
     --pin_l0_filter_and_index_blocks_in_cache=1 \
     --write_buffer_size=134217728 \
     --max_write_buffer_number=8 \
     --level0_file_num_compaction_trigger=8 \
     --level0_slowdown_writes_trigger=40 \
     --level0_stop_writes_trigger=72 \
     --max_bytes_for_level_base=536870912 \
     --use_direct_io_for_flush_and_compaction=1"

echo "Overnight run completed at $(date)." >> "$OUTPUT_FILE"
echo "All tasks completed. Please review $OUTPUT_FILE."
```