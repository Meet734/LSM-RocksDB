## **1.1 Background**

RocksDB is a high-performance, embedded key-value store based on the Log-Structured Merge (LSM) tree architecture, widely used in production systems like Facebook's MySQL, MongoDB, and many other data-intensive applications. A critical performance metric in LSM-tree-based systems is **Write Amplification (WA)**, which represents how many times data is rewritten to persistent storage during the compaction process.

### **The Core Problem**

Current RocksDB implementations use **static, one-size-fits-all compaction configurations** that are set at database initialization and remain fixed throughout the system's lifetime. These configurations include:

- `level0_file_num_compaction_trigger`: When to trigger compaction
- `max_bytes_for_level_base`: Maximum size of level 1
- `target_file_size_base`: Target file size per level
- `level_compaction_dynamic_level_bytes`: Level size multiplier

### **Why This Is a Problem**

1. **Workload Variability**: Real-world applications have dynamic workloads that change over time
    
    - Morning: Write-heavy (logging, metrics)
    - Afternoon: Read-heavy (analytics queries)
    - Evening: Delete-heavy (data retention policies)
2. **Static Configuration Limitations**:
    
    - Configuration optimized for write-heavy workloads hurts read performance
    - Configuration optimized for reads increases write amplification
    - No existing mechanism adapts to workload changes
3. **Performance Trade-offs**:
    
    - Default RocksDB settings achieve ~8-10x write amplification
    - This causes excessive disk I/O, SSD wear, and energy consumption
    - Operators must manually tune parameters (time-consuming, error-prone)
4. **Current Industry Practice**:
    
    - Most RocksDB deployments use default settings or manually tuned static values
    - No published system automatically adapts compaction policies based on runtime workload characteristics

---

## **1.2 Problem Statement (Formal)**

**How can we design and implement an adaptive compaction policy system for RocksDB that dynamically adjusts compaction parameters based on real-time workload characteristics to reduce write amplification while maintaining acceptable read performance and space efficiency, without requiring manual intervention or database restart?**

### **Key Research Questions**

1. **RQ1**: What workload metrics best indicate when compaction parameters should be adjusted?
2. **RQ2**: How should compaction parameters be adjusted in response to different workload patterns?
3. **RQ3**: How much performance improvement (write amplification reduction) is achievable through adaptive policies?
4. **RQ4**: What are the trade-offs between write, read, and space amplification when using adaptive policies?
5. **RQ5**: Can parameter adjustments be applied dynamically without stopping the database or incurring large performance penalties?

---

# **SECTION 2: PROJECT OBJECTIVES & GOALS**

## **2.1 Primary Objectives**

### **Objective 1: Design an Adaptive Compaction Policy Framework**

- Develop a systematic approach to monitor workload characteristics
- Create a decision-making algorithm to adjust compaction parameters
- Design mechanisms to apply parameter changes dynamically

### **Objective 2: Implement the Framework in RocksDB**

- Modify RocksDB source code to integrate adaptive compaction logic
- Implement workload monitoring and classification
- Create parameter adjustment mechanisms

### **Objective 3: Comprehensive Experimental Evaluation**

- Benchmark against default RocksDB configurations
- Test across multiple workload types (write-heavy, read-heavy, mixed, delete-heavy)
- Evaluate performance metrics (WA, RA, SA, latency, throughput)

### **Objective 4: Demonstrate Practical Feasibility**

- Show that adaptive policy works on production-like scenarios
- Prove dynamic parameter adjustment works without database restart
- Demonstrate adaptability to workload changes

---

## **2.2 Success Criteria**

|Criterion|Target|Measurement|
|---|---|---|
|**Write Amplification Reduction**|20-35% improvement|WA_baseline / WA_adaptive|
|**Read Performance**|No degradation > 10%|Average latency comparison|
|**Space Efficiency**|Maintain within 5%|Space amplification ratio|
|**Latency P99**|Improvement or neutral|P99 latency benchmark|
|**Dynamic Adaptation**|<2 second response time|Time to adjust after workload change|
|**Code Quality**|Compiles without warnings|GCC/Clang clean build|
|**Reproducibility**|100% reproducible results|Same results with same setup|

---

# **SECTION 3: SYSTEM REQUIREMENTS**

## **3.1 Hardware Requirements**

```
MINIMUM SPECIFICATION:
┌─────────────────────────────────────────────────┐
│ CPU:           4 cores, 2.0 GHz or better      │
│ RAM:           8 GB (for RocksDB + benchmarks) │
│ Storage:       100 GB free space (experiments) │
│ Connectivity:  For downloading dependencies    │
└─────────────────────────────────────────────────┘

RECOMMENDED SPECIFICATION:
┌─────────────────────────────────────────────────┐
│ CPU:           8+ cores, 2.5+ GHz              │
│ RAM:           16 GB (faster execution)        │
│ Storage:       200 GB SSD (better accuracy)    │
│ Network:       Gigabit (if using cloud)        │
└─────────────────────────────────────────────────┘
```

## **3.2 Software Requirements**

### **Operating System**

- **Primary**: Ubuntu 20.04 LTS or Ubuntu 22.04 LTS
- **Alternative**: Any Linux distribution (Debian, CentOS)
- **Not recommended**: Windows (use WSL2 if necessary), macOS (compatibility issues with some tools)

### **Programming Languages & Compilers**

```
C++ Compiler:
  - GCC 7.0+ or Clang 5.0+
  - Command: g++ --version or clang --version

Build Tools:
  - CMake 3.10+
  - GNU Make
  - pkg-config

Scripting & Analysis:
  - Python 3.8+
  - Bash shell
```

### **Dependencies**

|Software|Version|Purpose|
|---|---|---|
|**RocksDB**|Latest stable|Core database engine|
|**YCSB (Yahoo Cloud Serving Benchmark)**|0.17.0+|Workload benchmarking|
|**gflags**|Latest|Command-line flag library|
|**snappy**|1.1.7+|Compression library|
|**zlib**|1.2.11+|Compression library|

### **Development Tools**

```
Version Control:
  - Git 2.20+

Documentation:
  - LaTeX (for report generation)
  - Graphviz (for diagrams)

Monitoring/Profiling:
  - Linux perf tools
  - iostat, vmstat
  - time command
```

---

# **SECTION 4: ARTIFACT REQUIREMENTS**

## **4.1 Deliverable Artifacts**

### **Artifact 1: Modified RocksDB Source Code**

```
Location: /path/to/rocksdb-adaptive/
├── db/
│   ├── compaction_picker.cc (MODIFIED)
│   ├── compaction_picker.h (MODIFIED)
│   └── version_set.cc (MODIFIED)
├── include/
│   ├── rocksdb/options.h (MODIFIED)
│   └── rocksdb/adaptive_options.h (NEW)
├── util/
│   ├── adaptive_policy.cc (NEW)
│   ├── adaptive_policy.h (NEW)
│   ├── workload_monitor.cc (NEW)
│   └── workload_monitor.h (NEW)
└── CMakeLists.txt (MODIFIED)

Total New Code: ~1200 lines
Modified Code: ~300 lines
```

### **Artifact 2: Benchmark Infrastructure**

```
Location: /path/to/benchmarks/
├── ycsb_workload_runner.py (NEW)
├── workload_configs/
│   ├── write_heavy.cfg
│   ├── read_heavy.cfg
│   ├── mixed.cfg
│   └── delete_heavy.cfg
├── data_generator.py (NEW)
└── metrics_collector.sh (NEW)

Purpose: Automated benchmark execution and metrics collection
```

### **Artifact 3: Analysis & Visualization Scripts**

```
Location: /path/to/analysis/
├── metrics_analyzer.py (NEW)
├── plot_results.py (NEW)
├── statistical_analysis.py (NEW)
└── comparison_charts.py (NEW)

Purpose: Process raw data, generate graphs, perform statistical analysis
```

### **Artifact 4: Experimental Results & Data**

```
Location: /path/to/results/
├── baseline_results/
│   ├── write_heavy_results.csv
│   ├── read_heavy_results.csv
│   └── [all workload results]
├── adaptive_results/
│   ├── write_heavy_results.csv
│   ├── read_heavy_results.csv
│   └── [all workload results]
├── comparative_analysis/
│   ├── write_amplification_comparison.csv
│   ├── latency_comparison.csv
│   └── throughput_comparison.csv
└── graphs/
    ├── wa_comparison.png
    ├── latency_comparison.png
    └── [all visualization outputs]
```

### **Artifact 5: Research Report & Documentation**

```
Location: /path/to/documentation/
├── PROJECT_REPORT.md (Main deliverable)
├── TECHNICAL_DESIGN.md
├── EXPERIMENTAL_METHODOLOGY.md
├── RESULTS_ANALYSIS.md
├── README.md (Setup instructions)
├── API_DOCUMENTATION.md
└── REFERENCES.bib (Bibliography)
```

### **Artifact 6: Reproducibility Package**

```
Location: /path/to/reproducibility/
├── setup_environment.sh
├── build_rocksdb.sh
├── run_all_experiments.sh
├── collect_results.sh
├── setup_requirements.txt
└── REPRODUCIBILITY_GUIDE.md

Purpose: Enable anyone to reproduce results
```

---

# **SECTION 5: DETAILED WORK DESCRIPTION**

## **5.1 Phase 1: Understanding & Preparation**

### **What You'll Do**

**Task 1.1: RocksDB Architecture Deep-Dive**

- Study LSM tree fundamentals
- Understand compaction process in detail
- Learn current parameter tuning strategies
- Review RocksDB codebase structure

**Deliverable**:

- Architecture understanding notes
- Annotated RocksDB code sections
- Parameter dependency map

**Task 1.2: Literature Review**

- Read reference papers on LSM optimization
- Study adaptive systems in databases
- Review workload characterization techniques

**Deliverable**:

- Literature summary document (5-10 pages)
- Comparison table of existing approaches

**Task 1.3: Environment Setup**

- Install and compile RocksDB from source
- Set up YCSB benchmarking tool
- Create baseline testing infrastructure
- Verify all tools work correctly

**Deliverable**:

- Working RocksDB installation
- YCSB ready to run
- Automated test scripts

**Task 1.4: Baseline Measurements**

- Run benchmarks with default RocksDB
- Collect metrics for all workload types
- Record baseline numbers for later comparison

**Deliverable**:

- Baseline results CSV files
- Baseline performance graphs
- Baseline report

---

## **5.2 Phase 2: Design & Planning**

### **What You'll Do**

**Task 2.1: Workload Characterization Design**

- Define metrics to monitor (write rate, read rate, delete rate, etc.)
- Design sampling strategy (how often to measure)
- Plan moving window calculations
- Document classification logic

**Deliverable**:

- Workload Characterization Document
- Decision tree diagram
- Pseudocode for classification

**Task 2.2: Adaptive Parameter Policy Design**

- Define parameter adjustment rules for each workload type
- Specify thresholds and triggers
- Plan dynamic adjustment logic
- Design safeguards (max adjustments per time period)

**Deliverable**:

- Parameter Adjustment Policy Document
- Adjustment rule tables
- Pseudocode algorithms

**Task 2.3: Architecture Design**

- Design overall system architecture
- Plan code modifications needed
- Design data structures for monitoring
- Plan integration points with existing code

**Deliverable**:

- System architecture diagram
- Code modification plan
- Data structure designs
- Integration specification

**Task 2.4: Implementation Plan**

- Break down implementation into milestones
- Identify dependencies
- Plan testing strategy for each component

**Deliverable**:

- Detailed implementation roadmap
- Dependency graph
- Unit test plan

---

## **5.3 Phase 3: Implementation**

### **What You'll Do**

**Task 3.1: Build Workload Monitoring System**

- Implement metrics collection from RocksDB stats
- Create moving window calculations
- Implement workload classification logic
- Add logging for debugging

**Code Created**:

- `workload_monitor.h` and `workload_monitor.cc` (~300 lines)
- Integration into RocksDB startup

**Deliverable**:

- Functional monitoring system
- Unit tests passing
- Verified metrics collection

**Task 3.2: Implement Adaptive Decision Engine**

- Implement decision-making algorithm
- Create parameter adjustment functions
- Implement adjustment application logic
- Add safeguards and limits

**Code Created**:

- `adaptive_policy.h` and `adaptive_policy.cc` (~400-500 lines)
- Integration with compaction picker

**Deliverable**:

- Functional adaptive engine
- Decision logic tests passing
- Parameter adjustments working

**Task 3.3: Integrate with RocksDB Compaction System**

- Modify `compaction_picker.cc` to use adaptive parameters
- Update `options.h` with new configuration options
- Implement dynamic parameter application
- Add enable/disable switches

**Code Modified**:

- `compaction_picker.cc` (~100-150 lines)
- `compaction_picker.h` (~30-50 lines)
- `options.h` (~50 lines)
- `version_set.cc` (~50 lines)

**Deliverable**:

- Integrated system
- Clean compilation (no warnings)
- Functional end-to-end

**Task 3.4: Code Quality & Documentation**

- Add code comments and docstrings
- Create function documentation
- Add configuration documentation
- Write integration guide

**Deliverable**:

- Well-documented code
- API documentation
- Configuration guide

---

## **5.4 Phase 4: Experimental Evaluation**

### **What You'll Do**

**Task 4.1: Single Workload Testing**

- Run each workload type (write-heavy, read-heavy, mixed, delete-heavy) separately
- Compare adaptive system vs. baseline
- Measure all metrics
- Collect detailed statistics

**Experiments**:

- Write-heavy workload: 80% writes, 20% reads
- Read-heavy workload: 20% writes, 80% reads
- Mixed workload: 50% writes, 50% reads
- Delete-heavy workload: 50% writes, 50% reads, 30% deletes

**Duration per experiment**: 30 minutes **Repetitions**: 3 times (for variance measurement)

**Deliverable**:

- Results CSV files
- Comparison tables
- Statistical analysis (mean, std dev, min, max)

**Task 4.2: Dynamic Workload Testing**

- Create workload that changes over time
- Show system adapts appropriately
- Measure adaptation latency and effectiveness
- Record parameter changes during execution

**Experiment Design**:

```
Timeline:
0:00-5:00   Write-heavy phase
5:00-10:00  Read-heavy phase
10:00-15:00 Mixed phase
15:00-20:00 Delete-heavy phase
20:00-25:00 Write-heavy again
```

**Deliverable**:

- Timeline graphs showing workload and parameter changes
- Adaptation latency measurements
- Effectiveness analysis

**Task 4.3: Scalability Testing**

- Test with different data sizes (100MB, 1GB, 10GB, 50GB)
- Test with different thread counts
- Verify system scales appropriately
- Check overhead of monitoring

**Deliverable**:

- Scalability results
- Overhead analysis
- Performance graphs

**Task 4.4: Trade-off Analysis**

- Analyze WA vs. Read latency trade-offs
- Show performance with different optimization targets
- Demonstrate balanced approach
- Document when to use which configuration

**Deliverable**:

- Trade-off analysis document
- Trade-off curves (graphs)
- Recommendations for different scenarios

---

## **5.5 Phase 5: Analysis & Reporting**

### **What You'll Do**

**Task 5.1: Results Analysis**

- Process all experimental data
- Perform statistical significance testing
- Identify patterns and trends
- Generate summary statistics

**Deliverable**:

- Statistical analysis document
- Key findings summary
- Trend analysis

**Task 5.2: Visualization & Presentation**

- Create comparison graphs (baseline vs. adaptive)
- Create time-series graphs (adaptive behavior over time)
- Create trade-off visualization
- Design presentation slides

**Deliverable**:

- Professional graphs (PNG, PDF)
- PowerPoint presentation
- Infographics

**Task 5.3: Comprehensive Report Writing**

- Write detailed project report
- Document methodology
- Present results with analysis
- Discuss limitations and future work

**Deliverable**:

- Full research report (20-30 pages)
- Well-structured and formatted
- Proper citations and references

---

# **SECTION 6: EXPECTED OBSERVATIONS & OUTCOMES**

## **6.1 Expected Performance Improvements**

### **Metric 1: Write Amplification Reduction**

**Expected Results by Workload Type**:

```
WRITE-HEAVY WORKLOAD (80% writes, 20% reads)
┌──────────────────────────────────┐
│ Baseline WA:         10.2x       │
│ Adaptive WA:          6.5x       │
│ Improvement:         36% ✓       │
│ Confidence:          Very High   │
└──────────────────────────────────┘

READ-HEAVY WORKLOAD (20% writes, 80% reads)
┌──────────────────────────────────┐
│ Baseline WA:          7.8x       │
│ Adaptive WA:          7.1x       │
│ Improvement:         9%  ✓       │
│ Confidence:          Medium      │
└──────────────────────────────────┘

MIXED WORKLOAD (50% writes, 50% reads)
┌──────────────────────────────────┐
│ Baseline WA:          8.5x       │
│ Adaptive WA:          6.8x       │
│ Improvement:         20% ✓       │
│ Confidence:          High        │
└──────────────────────────────────┘

DELETE-HEAVY WORKLOAD (50% writes, 50% reads, 30% deletes)
┌──────────────────────────────────┐
│ Baseline WA:         12.3x       │
│ Adaptive WA:          8.2x       │
│ Improvement:         33% ✓       │
│ Confidence:          High        │
└──────────────────────────────────┘
```

### **Metric 2: Read Latency Impact**

**Expected Results**:

```
Average Read Latency (milliseconds):
┌─────────────────────────────────────┐
│ Baseline P50:      2.1 ms           │
│ Adaptive P50:      2.3 ms (+10%)    │
│ Baseline P99:     14.5 ms           │
│ Adaptive P99:     13.8 ms (-5%)     │
│ Acceptable: YES ✓                  │
└─────────────────────────────────────┘
```

### **Metric 3: Space Amplification**

**Expected Results**:

```
Space Utilization (ratio of data size):
┌─────────────────────────────────────┐
│ Baseline SA:      1.15x             │
│ Adaptive SA:      1.18x             │
│ Change:          +2.6% (acceptable) │
│ Reason: More agile compaction       │
└─────────────────────────────────────┘
```

### **Metric 4: Throughput**

**Expected Results**:

```
Write Throughput (operations/second):
┌─────────────────────────────────────┐
│ Baseline:        15,000 ops/s       │
│ Adaptive:        16,200 ops/s       │
│ Improvement:        8% ✓            │
│ Reason: Lower WA = less disk I/O    │
└─────────────────────────────────────┘

Read Throughput (operations/second):
┌─────────────────────────────────────┐
│ Baseline:        45,000 ops/s       │
│ Adaptive:        43,500 ops/s       │
│ Change:            -3% (acceptable) │
│ Tradeoff acknowledged ✓             │
└─────────────────────────────────────┘
```

---

## **6.2 Expected Observations About Adaptive Behavior**

### **Observation 1: System Detects Workload Changes**

**What you'll observe**:

- System detects workload shifts within 30-60 seconds
- Classification changes reflect actual workload
- Adjustment decisions match expected behavior

**Graph you'll create**:

```
Workload Detection Timeline:
─────────────────────────────────────────
Time    Actual Workload    Detected Type
─────────────────────────────────────────
0-5m    Write-heavy        ✓ Detected
5-10m   Read-heavy         ✓ Detected (after ~40s lag)
10-15m  Mixed              ✓ Detected (after ~35s lag)
15-20m  Delete-heavy       ✓ Detected (after ~50s lag)
─────────────────────────────────────────
Detection accuracy: 100%
Average detection latency: 42 seconds ✓
```

### **Observation 2: Parameter Adjustments Are Appropriate**

**What you'll observe**:

- When write-heavy detected: L0 trigger reduced (compact sooner)
- When read-heavy detected: Level file size increased (fewer files)
- When delete-heavy detected: Tombstone scoring adjusted

**Graph you'll create**:

```
Parameter Adjustment Pattern:
─────────────────────────────────────────
Workload         Trigger  FileSize  Adjustment
─────────────────────────────────────────
Write-heavy      3 (↓)    64MB      Aggressive
Read-heavy       6 (↑)    128MB     Relaxed
Mixed            4        64MB      Balanced
Delete-heavy     3 (↓)    48MB      Aggressive tombstone
─────────────────────────────────────────
All adjustments match expected logic: ✓
```

### **Observation 3: Dynamic Application Works Without Restart**

**What you'll observe**:

- Parameters change while database is running
- No service interruption
- Performance smoothly transitions
- No crashes or errors

**Metrics you'll collect**:

```
Dynamic Application Safety Metrics:
────────────────────────────────────────
Parameter changes applied: 47
Successful applications: 47 (100%) ✓
Failed applications: 0 ✓
Database crashes: 0 ✓
Operations interrupted: 0 ✓
Average change latency: <100ms ✓
```

---

## **6.3 Expected Trade-offs**

### **Trade-off 1: Write Amplification vs. Read Latency**

```
When optimizing for writes (write-heavy):
├─ Benefit: 36% lower write amplification ✓
├─ Cost: 10% increase in read latency (acceptable)
└─ Net result: POSITIVE (disk I/O reduction outweighs)

When optimizing for reads (read-heavy):
├─ Benefit: 5% lower read latency ✓
├─ Cost: 2% increase in write amplification (minimal)
└─ Net result: POSITIVE (read latency slight improvement)

When balanced (mixed workload):
├─ Benefit: 20% lower write amplification ✓
├─ Cost: 3% increase in read latency (acceptable)
└─ Net result: POSITIVE (good balance)
```

### **Trade-off 2: Space Amplification vs. Compaction Efficiency**

```
Higher space amplification:
├─ Reason: More frequent, smaller compactions
├─ Amount: +2-3% increase
├─ Trade-off: Worth it for WA reduction
└─ Mitigation: Can be tuned if needed

Lower space amplification not possible:
├─ Because: Aggressive compaction = less wasted space
├─ But: Higher compaction cost
└─ Decision: Accept slight space increase
```

### **Trade-off 3: CPU Overhead vs. Performance Gains**

```
Monitoring overhead:
├─ CPU time: ~1-2% additional
├─ Impact: Negligible in most systems
└─ Measurement: Verified in results

Compaction decision overhead:
├─ CPU time: <0.5% additional
├─ Impact: Minimal
└─ Conclusion: Worth the benefits
```

---

## **6.4 Confidence Levels in Expected Outcomes**

```
HIGH CONFIDENCE (95%+):
├─ Write amplification reduction in write-heavy: 25-40% ✓
├─ System compiles and runs: 100% ✓
├─ Dynamic parameter application works: 95%+ ✓
├─ Workload detection works: 95%+ ✓
└─ Read latency impact <10%: 90%+ ✓

MEDIUM CONFIDENCE (70-90%):
├─ Delete-heavy improvements: 30-40% ✓
├─ Scalability to 50GB: 80% ✓
├─ Trade-off analysis precise: 75% ✓
└─ Reproducibility: 85% ✓

LOWER CONFIDENCE (50-70%):
├─ Exact improvement numbers (±5% variance expected)
├─ Performance under extreme load conditions
└─ Behavior with very old hardware
```

---

# **SECTION 7: DETAILED STEP-BY-STEP PROJECT TIMELINE**

## **7.1 Phase 1: Preparation & Understanding (Weeks 1-2)**

### **Week 1: Foundation Building**

#### **Days 1-2: Learning & Setup**

**Monday-Tuesday**

- [ ] Install Ubuntu 20.04 LTS (if not already done)
- [ ] Install required software:
    
    ```bash
    sudo apt-get updatesudo apt-get install -y build-essential cmake git python3 python3-pipsudo apt-get install -y libsnappy-dev zlib1g-dev libbz2-dev libzstd-dev
    ```
    
- [ ] Watch YouTube videos on LSM trees (2-3 videos, ~30 minutes total)
- [ ] Read RocksDB architecture paper (official Facebook paper)

**Deliverable**: All software installed, understanding of LSM trees

**Time allocation**: 6 hours

#### **Days 3-4: RocksDB Installation & Exploration**

**Wednesday-Thursday**

- [ ] Clone RocksDB repository
    
    ```bash
    git clone https://github.com/facebook/rocksdb.gitcd rocksdbgit checkout latest_stable_tag
    ```
    
- [ ] Compile RocksDB
    
    ```bash
    mkdir build && cd buildcmake ..make -j$(nproc)make install
    ```
    
- [ ] Run basic RocksDB tests to verify installation
- [ ] Explore RocksDB codebase structure
- [ ] Identify key files:
    - `db/compaction_picker.cc`
    - `include/rocksdb/options.h`
    - `util/stats_collector.cc`

**Deliverable**: Working RocksDB installation, codebase familiarity

**Time allocation**: 8 hours

#### **Day 5: YCSB Setup & First Benchmarks**

**Friday**

- [ ] Download and build YCSB
    
    ```bash
    wget https://github.com/brianfrankcooper/YCSB/releases/download/0.17.0/ycsb-0.17.0.tar.gztar xfvz ycsb-0.17.0.tar.gzcd ycsb-0.17.0
    ```
    
- [ ] Download RocksDB binding for YCSB
- [ ] Create basic workload configuration files
- [ ] Run first benchmark with default RocksDB
- [ ] Verify metrics collection

**Deliverable**: YCSB running, first benchmark complete

**Time allocation**: 5 hours

---

### **Week 2: Baseline & Planning**

#### **Days 1-2: Comprehensive Baseline Measurement**

**Monday-Tuesday**

- [ ] Create 4 workload configurations:
    
    - write_heavy.cfg (80% writes, 20% reads)
    - read_heavy.cfg (20% writes, 80% reads)
    - mixed.cfg (50% writes, 50% reads)
    - delete_heavy.cfg (custom with delete operations)
- [ ] Run each workload 3 times with default RocksDB:
    
    ```bash
    for i in {1..3}; do
      python ycsb.py -run -P write_heavy.cfg -p rocksdb.db=./data_wh_$i
    done
    ```
    
- [ ] Collect metrics for each run:
    
    - Write amplification
    - Read amplification
    - Space amplification
    - Latency (P50, P99, P999)
    - Throughput

**Deliverable**: Baseline results CSV files, baseline statistics

**Time allocation**: 12 hours

#### **Days 3-4: Design Phase**

**Wednesday-Thursday**

- [ ] Create detailed design document with sections:
    
    1. Workload monitoring approach
    2. Classification algorithm
    3. Parameter adjustment rules
    4. System architecture
- [ ] Draw system architecture diagrams
    
- [ ] Create decision tree for workload classification
    
- [ ] Document parameter adjustment rules with pseudocode
    
- [ ] Plan code modifications needed
    

**Example Design Document Outline**:

```
1. Workload Monitoring
   1.1 Metrics to collect
   1.2 Sampling frequency
   1.3 Moving window calculations
   
2. Workload Classification
   2.1 Classification algorithm
   2.2 Decision rules
   2.3 Thresholds
   
3. Parameter Adjustment
   3.1 Adjustment rules by workload type
   3.2 Safeguards and limits
   3.3 Application mechanism
   
4. Implementation Strategy
   4.1 Code files to create/modify
   4.2 Integration points
   4.3 Testing strategy
```

**Deliverable**: Comprehensive design document (10-15 pages)

**Time allocation**: 10 hours

#### **Day 5: Deep Code Review**

**Friday**

- [ ] Deep dive into RocksDB compaction code:
    
    - Study `CompactionPicker` class
    - Understand parameter usage
    - Identify modification points
    - Map data flow
- [ ] Create annotated code document showing:
    
    - Where to add monitoring
    - Where to add decision logic
    - Where to apply parameter changes
- [ ] Create dependency graph showing:
    
    - How files depend on each other
    - What needs to change
    - Integration sequence

**Deliverable**: Code review document, modification plan

**Time allocation**: 8 hours

---

**End of Week 2 Status**:

- ✅ RocksDB installed and understood
- ✅ YCSB benchmarking working
- ✅ Baseline measurements complete
- ✅ Design finalized
- ✅ Ready to implement

---

## **7.2 Phase 2: Implementation (Weeks 3-5)**

### **Week 3: Workload Monitoring System**

#### **Day 1: Data Structures**

**Monday**

- [ ] Create `workload_monitor.h`:
    
    ```cpp
    // Define structures:
    struct WorkloadMetrics {
      double write_rate;      // MB/s
      double read_rate;       // ops/s
      double delete_rate;     // % of operations
      double current_wa;      // write amplification
      double current_ra;      // read amplification
    };
    
    struct WorkloadClassification {
      enum Type { WRITE_HEAVY, READ_HEAVY, MIXED, DELETE_HEAVY };
      Type type;
      double confidence;
      int64_t timestamp;
    };
    
    class WorkloadMonitor {
      // Methods to track metrics
    };
    ```
    
- [ ] Create supporting data structures for:
    
    - Moving window calculations
    - Metric storage
    - Classification history

**Deliverable**: Header file with all necessary structures

**Time allocation**: 4 hours

#### **Days 2-3: Metrics Collection**

**Tuesday-Wednesday**

- [ ] Implement metrics collection from RocksDB stats:
    
    - Hook into existing stats collection
    - Extract relevant metrics
    - Calculate derived metrics (rates)
    - Implement moving window calculations
- [ ] Write functions:
    
    - `void UpdateMetrics()` - Called periodically
    - `double GetWriteRate()` - Calculate from stats
    - `double GetReadRate()` - Calculate from stats
    - `double GetDeleteRate()` - Calculate from stats
- [ ] Add comprehensive logging for debugging
    

**Implementation (~150 lines)**:

**Deliverable**: Functional metrics collection

**Time allocation**: 10 hours

#### **Days 4-5: Classification Algorithm**

**Thursday-Friday**

- [ ] Implement classification logic:

```cpp
WorkloadClassification Classify(WorkloadMetrics metrics) {
  // Logic:
  // IF write_rate > 2 * read_rate AND delete_rate < 10%
  //   → WRITE_HEAVY
  // ELSE IF read_rate > 2 * write_rate
  //   → READ_HEAVY
  // ELSE IF delete_rate > 25%
  //   → DELETE_HEAVY
  // ELSE
  //   → MIXED
}
```

- [ ] Add confidence scoring
- [ ] Add hysteresis (avoid rapid switching)
- [ ] Implement classification history tracking
- [ ] Add logging for classification changes

**Implementation (~150 lines)**:

**Deliverable**: Working classification system

**Time allocation**: 8 hours

---

### **Week 4: Adaptive Policy Engine**

#### **Day 1: Parameter Adjustment Rules**

**Monday**

- [ ] Create `adaptive_policy.h`:
    
    ```cpp
    class AdaptiveCompactionPolicy {
      // Parameter adjustment functions
      void AdjustForWriteHeavy();
      void AdjustForReadHeavy();
      void AdjustForMixed();
      void AdjustForDeleteHeavy();
      
      // Apply changes
      void ApplyParameterChanges();
    };
    ```
    
- [ ] Define adjustment rules:
    
    - Write-heavy: ↓ level0_file_num_compaction_trigger, ↑ max_bytes_for_level_base
    - Read-heavy: ↑ target_file_size_base, ↓ max_bytes_for_level_base
    - Delete-heavy: Adjust tombstone compaction scoring

**Deliverable**: Header file with policy class

**Time allocation**: 4 hours

#### **Days 2-3: Implementation**

**Tuesday-Wednesday**

- [ ] Implement parameter adjustment functions:

```cpp
void AdaptiveCompactionPolicy::AdjustForWriteHeavy() {
  // Adjust to reduce write amplification
  // Step 1: Reduce L0 compaction trigger
  //   level0_file_num_compaction_trigger = 3 (from 4)
  // Step 2: Increase level multiplier
  //   max_bytes_for_level_multiplier = 10 (from 10)
  // Step 3: Adjust file size
  //   target_file_size_base = 32MB (from 64MB)
  // Result: More frequent but smaller compactions
}
```

- [ ] Add safeguards:
    
    - Don't adjust more than once per 30 seconds
    - Validate new parameters before applying
    - Log all parameter changes
    - Add undo mechanism if needed
- [ ] Add parameter reversal logic:
    
    - Revert to balanced if workload changes

**Implementation (~200 lines)**:

**Deliverable**: Functional parameter adjustment system

**Time allocation**: 10 hours

#### **Days 4-5: Integration with RocksDB**

**Thursday-Friday**

- [ ] Modify `compaction_picker.cc`:
    
    - Add hook to call adaptive policy
    - Pass current metrics to policy
    - Use adjusted parameters in compaction decisions
    - Preserve backward compatibility
- [ ] Modify `options.h`:
    
    - Add enable/disable flags for adaptive policy
    - Add configuration options for thresholds
    - Document new options
- [ ] Test integration:
    
    - Verify compilation
    - Run basic functionality tests
    - Check for warnings

**Modifications (~200 lines)**:

**Deliverable**: Integrated adaptive system

**Time allocation**: 10 hours

---

### **Week 5: Testing & Refinement**

#### **Days 1-2: Unit Testing**

**Monday-Tuesday**

- [ ] Create unit tests for:
    
    - Metrics collection
    - Classification logic
    - Parameter adjustment
    - Integration points
- [ ] Test edge cases:
    
    - Rapid workload changes
    - Extreme metrics
    - Parameter boundaries
- [ ] Verify correctness:
    
    - Classification accuracy
    - Parameter values are reasonable
    - No crashes or errors

**Deliverable**: Unit tests passing, test report

**Time allocation**: 8 hours

#### **Days 3-4: First Integration Test**

**Wednesday-Thursday**

- [ ] Run adaptive system with single workload
    
- [ ] Verify:
    
    - System starts correctly
    - Metrics are collected
    - Classification works
    - Parameters adjust
    - Database runs without crashes
- [ ] Collect logs and verify behavior
    
- [ ] Debug any issues
    
- [ ] Refine as needed
    

**Deliverable**: Working system, verified logs

**Time allocation**: 8 hours

#### **Day 5: Code Quality**

**Friday**

- [ ] Code review of all new code
    
- [ ] Add documentation:
    
    - Function docstrings
    - Algorithm explanations
    - Configuration guide
    - Troubleshooting guide
- [ ] Clean up:
    
    - Remove debug code
    - Optimize where needed
    - Ensure no compiler warnings
- [ ] Create code summary document
    

**Deliverable**: Production-ready code

**Time allocation**: 6 hours

---

**End of Week 5 Status**:

- ✅ Adaptive system fully implemented
- ✅ All unit tests passing
- ✅ Integration verified
- ✅ Code documented and clean
- ✅ Ready for experimental evaluation

---

## **7.3 Phase 3: Experimental Evaluation (Weeks 6-7)**

### **Week 6: Comprehensive Benchmarking**

#### **Days 1-3: Single Workload Experiments**

**Monday-Wednesday**

- [ ] For each workload type (write-heavy, read-heavy, mixed, delete-heavy):
    
    **Step 1: Setup**
    
    - Prepare fresh database
    - Create workload configuration
    - Prepare measurement tools
    
    **Step 2: Run 3 repetitions**
    
    ```bash
    for iteration in 1 2 3; do
      # Run baseline version
      ./run_benchmark baseline write_heavy $iteration
      
      # Run adaptive version
      ./run_benchmark adaptive write_heavy $iteration
    done
    ```
    
    **Step 3: Collect metrics**
    
    - Extract from RocksDB stats
    - Parse logs
    - Calculate derived metrics
    
    **Step 4: Record results**
    
    - Save to CSV files
    - Calculate mean, std dev, min, max

**Data Collection Matrix**:

```
For each combination:
- Workload type: 4 types
- System: 2 (baseline, adaptive)
- Repetitions: 3
- Total runs: 4 × 2 × 3 = 24 benchmarks
- Time per benchmark: ~30 minutes
- Total time: ~12 hours (can parallelize)

Metrics to collect (per run):
- Write amplification
- Read amplification
- Space amplification
- Write throughput
- Read throughput
- Latency (P50, P99, P999)
- Compaction time
- Compaction frequency
```

**Deliverable**: Complete benchmark results, CSV files

**Time allocation**: 18 hours (3 days)

#### **Days 4-5: Dynamic Workload Testing**

**Thursday-Friday**

- [ ] Create dynamic workload:
    
    - 0-5 min: Write-heavy
    - 5-10 min: Read-heavy
    - 10-15 min: Mixed
    - 15-20 min: Delete-heavy
    - 20-25 min: Write-heavy again
- [ ] Run dynamic workload with adaptive system:
    
    ```bash
    ./run_dynamic_benchmark adaptive 3_repetitions
    ```
    
- [ ] For each run, collect:
    
    - Timestamps of workload changes
    - Timestamps of parameter adjustments
    - Metrics at each phase
    - Adaptation latency
    - Parameter values over time
- [ ] Analyze adaptation:
    
    - Detection latency
    - Response appropriateness
    - Smooth transitions

**Deliverable**: Dynamic workload results, adaptation analysis

**Time allocation**: 12 hours

---

### **Week 7: Analysis & Refinement**

#### **Days 1-2: Data Analysis**

**Monday-Tuesday**

- [ ] Statistical analysis:
    
    - Calculate means and standard deviations
    - Perform significance testing (t-tests)
    - Calculate confidence intervals
    - Analyze variance
- [ ] Comparative analysis:
    
    ```
    For each metric and workload:
    - Baseline mean vs. Adaptive mean
    - % improvement
    - Statistical significance
    - Confidence level
    ```
    
- [ ] Trade-off analysis:
    
    - WA vs. Read latency
    - WA vs. Space
    - Identify optimal points
    - Document trade-offs

**Deliverable**: Analysis report, statistical results

**Time allocation**: 10 hours

#### **Days 3-4: Visualization**

**Wednesday-Thursday**

- [ ] Create comparison graphs:

```
Graph 1: Write Amplification Comparison
  Bar chart: Baseline vs. Adaptive for each workload

Graph 2: Latency Comparison
  Multi-series chart: P50, P99 for baseline vs. adaptive

Graph 3: Throughput Comparison
  Bar chart: Write and read throughput

Graph 4: Dynamic Adaptation Timeline
  Line chart: Workload type, parameters, metrics over time

Graph 5: Trade-off Curves
  Scatter: WA vs. Latency, different configurations

Graph 6: Adaptation Latency
  Histogram: Time to detect and respond to workload change
```

- [ ] Create summary tables
- [ ] Generate presentation slides

**Deliverable**: Professional visualizations, presentation

**Time allocation**: 10 hours

#### **Day 5: Write Results Section**

**Friday**

- [ ] Write detailed results section:
    
    1. Executive summary of findings
    2. Per-workload analysis
    3. Dynamic adaptation analysis
    4. Trade-off discussion
    5. Comparison with expectations
- [ ] Document surprises or unexpected results
    
- [ ] Prepare for potential questions
    

**Deliverable**: Results write-up (5-8 pages)

**Time allocation**: 8 hours

---

**End of Week 7 Status**:

- ✅ All experiments complete
- ✅ Results analyzed statistically
- ✅ Visualizations created
- ✅ Results documented
- ✅ Ready for final reporting

---

## **7.4 Phase 4: Final Reporting & Preparation (Week 8)**

### **Week 8: Documentation & Finalization**

#### **Day 1: Technical Documentation**

**Monday**

- [ ] Create comprehensive documentation:
    
    **1. TECHNICAL_DESIGN.md** (5-7 pages)
    
    - Architecture overview
    - Workload monitoring approach
    - Classification algorithm
    - Parameter adjustment logic
    - Design decisions and rationale
    
    **2. IMPLEMENTATION_DETAILS.md** (5-7 pages)
    
    - Code structure
    - Key files and their purposes
    - Integration points
    - Build and installation instructions
    - API documentation
    
    **3. EXPERIMENTAL_METHODOLOGY.md** (4-5 pages)
    
    - Benchmark setup
    - Workload descriptions
    - Measurement methodology
    - Statistical analysis approach
    - Reproducibility instructions

**Deliverable**: Three comprehensive technical documents

**Time allocation**: 8 hours

#### **Day 2: Main Research Report**

**Tuesday**

- [ ] Write comprehensive project report (20-30 pages):
    
    **Section 1: Introduction** (2 pages)
    
    - Problem statement
    - Research questions
    - Motivation
    - Contributions
    
    **Section 2: Background** (3-4 pages)
    
    - LSM trees and compaction
    - RocksDB architecture
    - Current tuning approaches
    - Related work
    
    **Section 3: Design & Implementation** (4-5 pages)
    
    - System design
    - Workload monitoring
    - Adaptive policy
    - Implementation details
    
    **Section 4: Experimental Setup** (3-4 pages)
    
    - Testbed configuration
    - Benchmark methodology
    - Workload descriptions
    - Measurement techniques
    
    **Section 5: Results & Analysis** (5-7 pages)
    
    - Per-workload results
    - Dynamic adaptation results
    - Statistical analysis
    - Trade-off analysis
    
    **Section 6: Discussion** (3-4 pages)
    
    - Key findings
    - Limitations
    - Threats to validity
    - Lessons learned
    
    **Section 7: Conclusions & Future Work** (2-3 pages)
    
    - Summary of contributions
    - Future research directions
    - Practical implications
    
    **Section 8: References** (1-2 pages)
    
    - All cited papers and resources

**Deliverable**: Complete research report

**Time allocation**: 12 hours

#### **Days 3-4: Presentation Preparation**

**Wednesday-Thursday**

- [ ] Create presentation slides (25-30 slides):
    
    1. Title & Overview (1 slide)
    2. Problem Statement (2 slides)
    3. Background & Motivation (3 slides)
    4. Related Work (2 slides)
    5. System Design (3 slides)
    6. Implementation (2 slides)
    7. Experimental Setup (2 slides)
    8. Results - Write Amplification (3 slides)
    9. Results - Latency & Throughput (3 slides)
    10. Results - Dynamic Adaptation (2 slides)
    11. Trade-off Analysis (2 slides)
    12. Discussion (2 slides)
    13. Conclusions & Future Work (1 slide)
    14. Questions (1 slide)
- [ ] Prepare presenter notes
    
- [ ] Create backup slides for Q&A
    
- [ ] Practice presentation (aim for 20-25 minutes)
    

**Deliverable**: Professional presentation, presenter notes

**Time allocation**: 10 hours

#### **Day 5: Reproducibility & Finalization**

**Friday**

- [ ] Create reproducibility package:
    
    **1. setup_environment.sh** - Install all dependencies **2. build_rocksdb.sh** - Build modified RocksDB **3. run_all_experiments.sh** - Run all benchmarks **4. REPRODUCIBILITY_GUIDE.md** - Step-by-step guide **5. requirements.txt** - All dependencies listed
    
- [ ] Create code repository structure:
    
    ```
    rocksdb-adaptive/
    ├── src/
    │   ├── adaptive_policy.cc
    │   ├── adaptive_policy.h
    │   ├── workload_monitor.cc
    │   └── workload_monitor.h
    ├── benchmarks/
    │   ├── ycsb_runner.py
    │   └── workload_configs/
    ├── results/
    │   ├── baseline_results/
    │   └── adaptive_results/
    ├── analysis/
    │   ├── analyze.py
    │   └── plot_results.py
    ├── docs/
    │   ├── TECHNICAL_DESIGN.md
    │   ├── EXPERIMENTAL_METHODOLOGY.md
    │   └── README.md
    ├── README.md (main)
    └── build.sh
    ```
    
- [ ] Create README with:
    
    - Project overview
    - Quick start guide
    - Detailed build instructions
    - Experiment running instructions
    - Results interpretation
- [ ] Final review:
    
    - Check all files present
    - Verify all scripts executable
    - Test build process
    - Verify documentation completeness

**Deliverable**: Complete reproducibility package, organized repository

**Time allocation**: 8 hours

---

**End of Week 8 Status**:

- ✅ Comprehensive documentation complete
- ✅ Research report written
- ✅ Presentation prepared
- ✅ Reproducibility package ready
- ✅ Project complete!

---

## **7.5 Timeline Summary**

```
WEEK 1-2: PREPARATION & BASELINE
├─ Week 1: Setup, installation, exploration
├─ Week 2: Baseline measurements, design
└─ Deliverable: Design document, baseline results

WEEK 3-5: IMPLEMENTATION
├─ Week 3: Workload monitoring system
├─ Week 4: Adaptive policy engine
├─ Week 5: Testing & refinement
└─ Deliverable: Working adaptive system

WEEK 6-7: EXPERIMENTAL EVALUATION
├─ Week 6: Comprehensive benchmarking
├─ Week 7: Analysis & visualization
└─ Deliverable: Complete results, analysis

WEEK 8: FINAL REPORTING
├─ Day 1: Technical documentation
├─ Day 2: Main research report
├─ Day 3-4: Presentation preparation
├─ Day 5: Reproducibility & finalization
└─ Deliverable: All documentation, presentation
```

---

# **SECTION 8: METRICS & KEY PERFORMANCE INDICATORS (KPIs)**

## **8.1 Success Metrics**

|KPI|Target|Measurement|Status|
|---|---|---|---|
|Write Amplification Reduction|20-35% average|(WA_baseline - WA_adaptive) / WA_baseline × 100|-|
|Read Latency Degradation|< 10%|(Latency_adaptive - Latency_baseline) / Latency_baseline × 100|-|
|Dynamic Adaptation Latency|< 60 seconds|Time to detect + time to respond|-|
|System Stability|0 crashes|Benchmark runs without errors|-|
|Code Quality|0 warnings|GCC/Clang clean compilation|-|
|Reproducibility|100% repeatable|Same results on same setup|-|

## **8.2 Tracking During Development**

Create a metrics tracking document:

```
WEEKLY PROGRESS:
┌─────────────────────────────────────────────────────────┐
│ Week N: [Status]                                        │
│ ├─ Completed Tasks:                                     │
│ ├─ In Progress:                                         │
│ ├─ Blockers/Issues:                                     │
│ ├─ Metrics So Far:                                      │
│ └─ Next Week Plan:                                      │
└─────────────────────────────────────────────────────────┘
```

---

# **SECTION 9: RISK MANAGEMENT & CONTINGENCY**

## **9.1 Potential Risks & Mitigation**

|Risk|Probability|Impact|Mitigation|
|---|---|---|---|
|RocksDB compilation fails|Low|High|Version control, backup branch|
|Adaptive logic doesn't improve results|Medium|High|Use simpler heuristics, focus on specific workloads|
|Benchmark takes too long|Medium|Medium|Parallelize, use smaller datasets initially|
|Parameter adjustments cause crashes|Low|High|Extensive testing, conservative thresholds|
|Results don't meet expectations|Medium|Medium|Analyze why, document limitations, pivot if needed|

## **9.2 Contingency Plans**

**If results are poor:**

- Focus on one specific workload instead of all
- Use simpler parameter adjustment rules
- Document why adaptive approach has limitations
- Still publishable as "what doesn't work and why"

**If time is running short:**

- Reduce number of workload types from 4 to 2
- Reduce experimental repetitions from 3 to 2
- Focus on core contribution, less on trade-off analysis
- Prioritize documentation over extra experiments

**If technical issues arise:**

- Document problem thoroughly
- Pivot to different implementation approach
- Focus on design contribution even if implementation incomplete
- Use simulation/analytical approach if needed

---

# **SECTION 10: DELIVERABLES CHECKLIST**

```
✅ WEEK 1-2 DELIVERABLES:
├─ [ ] RocksDB installed and compiling
├─ [ ] YCSB benchmarking working
├─ [ ] Baseline results collected
├─ [ ] Design document (10-15 pages)
└─ [ ] Implementation plan finalized

✅ WEEK 3-5 DELIVERABLES:
├─ [ ] workload_monitor.cc/h (~300 lines)
├─ [ ] adaptive_policy.cc/h (~400 lines)
├─ [ ] Modified RocksDB files (~300 lines changes)
├─ [ ] Unit tests passing (100%)
├─ [ ] Integration verified
└─ [ ] Code documentation complete

✅ WEEK 6-7 DELIVERABLES:
├─ [ ] Benchmark results (24 runs × multiple metrics)
├─ [ ] Dynamic workload results
├─ [ ] Statistical analysis report
├─ [ ] Comparative graphs (6+ graphs)
├─ [ ] Results write-up (5-8 pages)
└─ [ ] Trade-off analysis document

✅ WEEK 8 DELIVERABLES:
├─ [ ] TECHNICAL_DESIGN.md (5-7 pages)
├─ [ ] IMPLEMENTATION_DETAILS.md (5-7 pages)
├─ [ ] EXPERIMENTAL_METHODOLOGY.md (4-5 pages)
├─ [ ] PROJECT_REPORT.md (20-30 pages)
├─ [ ] Presentation slides (25-30 slides)
├─ [ ] Reproducibility package
├─ [ ] Code repository organized
└─ [ ] README with instructions

✅ FINAL PACKAGE:
├─ [ ] Complete source code (modified RocksDB + new code)
├─ [ ] All experimental results (CSVs)
├─ [ ] All visualizations (PNGs/PDFs)
├─ [ ] Complete documentation
├─ [ ] Research report
├─ [ ] Presentation
└─ [ ] README for running everything
```

---

# **SECTION 11: EXPECTED CHALLENGES & HOW TO OVERCOME THEM**

## **Challenge 1: Understanding RocksDB Codebase**

**Why it's hard**: RocksDB is a large, complex codebase (~100K lines of C++)

**How to overcome**:

- Start with official documentation
- Follow code flow for a single operation (e.g., Get, Put)
- Use debugger (gdb) to step through code
- Focus on compaction-related code first (smaller subset)
- Join RocksDB community forums if stuck

**Time to master**: 5-7 days

---

## **Challenge 2: Getting Accurate Metrics**

**Why it's hard**: RocksDB stats can be complex, multiple sources of truth

**How to overcome**:

- Use official RocksDB stats APIs
- Validate metrics against logs
- Cross-check with disk I/O monitoring tools (iostat, vmstat)
- Run extended benchmarks to smooth out noise
- Use multiple repetitions for statistical confidence

**Time required**: 5-7 days

---

## **Challenge 3: Implementing Adaptive Logic**

**Why it's hard**: Complex decision making, many edge cases

**How to overcome**:

- Start simple (3-4 classification types)
- Gradually add complexity
- Use state machine design (explicit states, transitions)
- Comprehensive logging for debugging
- Unit tests for each component

**Time required**: 7-10 days

---

## **Challenge 4: Experimental Variability**

**Why it's hard**: Same benchmark can give different results due to system noise

**How to overcome**:

- Run multiple repetitions (3+)
- Use statistical analysis (mean, std dev, confidence intervals)
- Control system environment (close other apps, disable power management)
- Use sufficient data size (at least 1GB) to reduce variance
- Report variance explicitly in results

**Time required**: Already accounted for in timeline

---

## **Challenge 5: Time Management**

**Why it's hard**: 8 weeks goes fast, many tasks to complete

**How to overcome**:

- Start Week 1 immediately, don't delay
- Use Gantt chart to track progress
- Do design work before coding (save rework)
- Parallelize where possible (benchmarks can run overnight)
- Set daily milestones, track progress
- Don't get stuck on non-critical details

**Tools**: Use a project management tool (Trello, Asana, or simple spreadsheet)

---

# **SECTION 12: FINAL NOTES & RECOMMENDATIONS**

## **12.1 Do's ✅**

- ✅ Start immediately, don't delay
- ✅ Document as you go, don't leave it for end
- ✅ Keep detailed logs of all experiments
- ✅ Commit code to version control frequently
- ✅ Back up important results
- ✅ Ask for help if stuck (advisor, community, peers)
- ✅ Focus on reproducibility from the start
- ✅ Celebrate milestones!

## **12.2 Don'ts ❌**

- ❌ Don't try to make the perfect system (aim for good)
- ❌ Don't skip baseline measurements
- ❌ Don't run experiments without logging properly
- ❌ Don't modify code without version control
- ❌ Don't skip testing/validation
- ❌ Don't leave documentation for last
- ❌ Don't ignore edge cases completely

## **12.3 Quality Checklist Before Submission**

```
CODE QUALITY:
├─ [ ] Compiles without errors (all toolchains)
├─ [ ] Compiles without warnings
├─ [ ] Unit tests pass (100%)
├─ [ ] Code is documented
├─ [ ] Code follows style guidelines
└─ [ ] Memory leaks checked (valgrind)

EXPERIMENTS:
├─ [ ] All experiments reproducible
├─ [ ] Results documented with raw data
├─ [ ] Statistical analysis done
├─ [ ] Confidence levels reported
├─ [ ] Results validated
└─ [ ] No cherry-picked results

DOCUMENTATION:
├─ [ ] All files present
├─ [ ] READMEs complete and clear
├─ [ ] Setup instructions verified
├─ [ ] Build instructions work
├─ [ ] Run instructions work
├─ [ ] Results can be reproduced
└─ [ ] All graphs properly labeled

REPORT:
├─ [ ] Problem clearly stated
├─ [ ] Background sufficient
├─ [ ] Methodology sound
├─ [ ] Results presented clearly
├─ [ ] Analysis thorough
├─ [ ] Limitations acknowledged
├─ [ ] Conclusions justified
└─ [ ] References complete
```

---

# **SECTION 13: SUCCESS FORMULA**

**Your success depends on:**

```
Success = (Disciplined Execution) × (Good Design) × (Rigorous Evaluation)

DISCIPLINED EXECUTION:
├─ Follow the timeline strictly
├─ Complete all weekly milestones
├─ Keep detailed progress logs
└─ Address issues immediately

GOOD DESIGN:
├─ Think before coding
├─ Discuss design with advisor
├─ Create comprehensive design document
└─ Get feedback early

RIGOROUS EVALUATION:
├─ Run multiple repetitions
├─ Use proper statistical analysis
├─ Control variables carefully
├─ Report limitations honestly
└─ Don't overstate results
```

---

This comprehensive plan gives you: ✅ Clear problem definition ✅ Complete work scope ✅ Expected outcomes ✅ System requirements ✅ Detailed week-by-week plan ✅ Deliverables at each phase ✅ Risk management ✅ Quality checklist

**You're ready to begin! Start with Week 1, Day 1 immediately. Good luck! 🚀**