# YCSB Workload Suite Results
# Started: 2026-07-04T17:03:41+00:00
# RECORD_COUNT: 10000000 | OPERATION_COUNT: 10000000 | THREADS: 1
# YCSB_HOME: /home/meet/ycsb/YCSB
# ---

## Phase: Default Baseline / Workload a
Timestamp: 2026-07-04T17:03:54+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp15dlxvz1'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.193 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.801 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.147 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.296 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.873 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.666 s
[INFO] Finished at: 2026-07-04T17:03:48Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 61
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpxjix_6h_'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.125 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.723 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.150 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.270 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.853 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.485 s
[INFO] Finished at: 2026-07-04T17:03:54Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 61
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Default Baseline / Workload b
Timestamp: 2026-07-04T17:04:38+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp3g9x0euq'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.166 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.785 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.148 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.292 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.871 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.619 s
[INFO] Finished at: 2026-07-04T17:04:32Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadb -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadb -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 60
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpsk4w7zye'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.164 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.786 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.144 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.286 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.902 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.651 s
[INFO] Finished at: 2026-07-04T17:04:38Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadb -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadb -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 59
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Default Baseline / Workload c
Timestamp: 2026-07-04T17:05:22+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpz3_x5plb'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.117 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.805 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.133 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.279 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.878 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.577 s
[INFO] Finished at: 2026-07-04T17:05:16Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadc -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadc -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 58
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpw6zk3wqc'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.150 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.864 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.128 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.259 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.856 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.621 s
[INFO] Finished at: 2026-07-04T17:05:22Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadc -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadc -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 60
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Default Baseline / Workload d
Timestamp: 2026-07-04T17:06:07+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpa12bmw9s'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.154 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.774 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.137 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.267 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.866 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.561 s
[INFO] Finished at: 2026-07-04T17:06:00Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadd -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadd -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 58
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp6impnagg'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.144 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.756 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.139 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.274 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.865 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.542 s
[INFO] Finished at: 2026-07-04T17:06:06Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadd -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadd -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 58
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Default Baseline / Workload e
Timestamp: 2026-07-04T17:06:50+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpfifcy0ic'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.163 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.777 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.137 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.273 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.841 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.556 s
[INFO] Finished at: 2026-07-04T17:06:44Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloade -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloade -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 59
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp7_hhfffi'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.137 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.772 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.135 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.295 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.861 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.558 s
[INFO] Finished at: 2026-07-04T17:06:50Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloade -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloade -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 59
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Default Baseline / Workload f
Timestamp: 2026-07-04T17:07:34+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpx7lt2s20'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.181 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.782 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.126 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.333 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.912 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.694 s
[INFO] Finished at: 2026-07-04T17:07:28Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadf -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadf -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 63
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpy4zyu059'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.181 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.785 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.145 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.258 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.880 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.612 s
[INFO] Finished at: 2026-07-04T17:07:34Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadf -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadf -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg1_default_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 61
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Read-Optimized / Workload a
Timestamp: 2026-07-04T17:08:18+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmphlrspixa'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.194 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.767 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.136 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.319 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.892 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.657 s
[INFO] Finished at: 2026-07-04T17:08:12Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 62
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpht4fp1mu'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.252 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.776 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.129 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.254 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.906 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.816 s
[INFO] Finished at: 2026-07-04T17:08:18Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 59
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Read-Optimized / Workload b
Timestamp: 2026-07-04T17:09:02+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpbmz7bh75'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.209 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.873 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.130 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.266 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.896 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.731 s
[INFO] Finished at: 2026-07-04T17:08:56Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadb -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadb -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 61
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpf9dby2tp'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.160 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.781 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.137 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.263 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.881 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.582 s
[INFO] Finished at: 2026-07-04T17:09:02Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadb -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadb -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 58
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Read-Optimized / Workload c
Timestamp: 2026-07-04T17:09:46+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpuqofoiu7'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.157 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.812 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.146 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.288 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.867 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.622 s
[INFO] Finished at: 2026-07-04T17:09:40Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadc -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadc -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 59
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp2f8gi6y6'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.131 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.765 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.129 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.258 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.896 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.538 s
[INFO] Finished at: 2026-07-04T17:09:46Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadc -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadc -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 59
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Read-Optimized / Workload d
Timestamp: 2026-07-04T17:10:30+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpkemz0j8n'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.164 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.788 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.145 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.271 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.862 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.591 s
[INFO] Finished at: 2026-07-04T17:10:24Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadd -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadd -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 60
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpidu7w273'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.185 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.763 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.131 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.282 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.851 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.568 s
[INFO] Finished at: 2026-07-04T17:10:30Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadd -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadd -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 58
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Read-Optimized / Workload e
Timestamp: 2026-07-04T17:11:14+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpmdwzpjzv'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.230 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.774 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.146 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.304 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.850 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.651 s
[INFO] Finished at: 2026-07-04T17:11:08Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloade -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloade -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 61
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpb4ruffcy'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.141 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.782 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.134 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.273 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.862 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.549 s
[INFO] Finished at: 2026-07-04T17:11:14Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloade -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloade -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 59
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Read-Optimized / Workload f
Timestamp: 2026-07-04T17:11:58+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmprepnfsze'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.145 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.775 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.138 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.288 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.877 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.581 s
[INFO] Finished at: 2026-07-04T17:11:52Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadf -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadf -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 60
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpghsddqmy'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.159 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.754 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.129 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.273 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.855 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.532 s
[INFO] Finished at: 2026-07-04T17:11:58Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadf -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadf -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg2_readopt_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 58
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Write-Amp Optimized / Workload a
Timestamp: 2026-07-04T17:12:42+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpqgw2qmpy'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.170 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.782 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.134 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.278 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.857 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.571 s
[INFO] Finished at: 2026-07-04T17:12:36Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 59
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpbnh43zwu'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.129 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.782 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.130 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.271 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.869 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.538 s
[INFO] Finished at: 2026-07-04T17:12:41Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 59
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Write-Amp Optimized / Workload b
Timestamp: 2026-07-04T17:13:25+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp1ufserqe'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.174 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.800 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.152 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.250 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.851 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.580 s
[INFO] Finished at: 2026-07-04T17:13:19Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadb -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadb -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 60
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpa6v4inup'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.120 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.812 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.133 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.271 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.859 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.556 s
[INFO] Finished at: 2026-07-04T17:13:25Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadb -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadb -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 62
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Write-Amp Optimized / Workload c
Timestamp: 2026-07-04T17:14:09+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp0hd6wq4l'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.188 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.817 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.159 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.309 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.928 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.756 s
[INFO] Finished at: 2026-07-04T17:14:03Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadc -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadc -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 59
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpfiwilkw0'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.132 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.778 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.128 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.283 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.854 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.530 s
[INFO] Finished at: 2026-07-04T17:14:09Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadc -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadc -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 57
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Write-Amp Optimized / Workload d
Timestamp: 2026-07-04T17:14:54+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp1l69_a6v'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.180 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.772 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.138 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.274 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.874 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.614 s
[INFO] Finished at: 2026-07-04T17:14:47Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadd -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadd -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 60
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp3qc6prg1'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.146 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.793 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.127 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.256 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.860 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.541 s
[INFO] Finished at: 2026-07-04T17:14:53Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadd -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadd -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 63
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Write-Amp Optimized / Workload e
Timestamp: 2026-07-04T17:15:37+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpvq09a7f_'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.195 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.794 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.134 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.279 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.864 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.640 s
[INFO] Finished at: 2026-07-04T17:15:31Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloade -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloade -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 62
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp12jm3jef'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.139 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.979 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.132 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.276 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.853 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.745 s
[INFO] Finished at: 2026-07-04T17:15:37Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloade -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloade -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 58
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Write-Amp Optimized / Workload f
Timestamp: 2026-07-04T17:16:21+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp1ksfuguu'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.146 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.781 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.126 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.269 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.845 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.527 s
[INFO] Finished at: 2026-07-04T17:16:15Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadf -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadf -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 60
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpclktg33z'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.151 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.779 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.133 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.313 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.963 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.702 s
[INFO] Finished at: 2026-07-04T17:16:21Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadf -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadf -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg3_writeamp_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 59
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Golden Config / Workload a
Timestamp: 2026-07-04T17:17:05+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpgem1iit9'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.153 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.785 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.135 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.258 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.896 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.581 s
[INFO] Finished at: 2026-07-04T17:16:59Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 59
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp661amm8x'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.107 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.747 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.136 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.271 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.862 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.467 s
[INFO] Finished at: 2026-07-04T17:17:05Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 59
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Golden Config / Workload b
Timestamp: 2026-07-04T17:17:49+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp5uhbnyb0'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.165 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.786 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.133 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.272 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.912 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.634 s
[INFO] Finished at: 2026-07-04T17:17:43Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadb -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadb -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 61
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpj24f4n1r'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.158 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.791 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.147 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.257 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.863 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.587 s
[INFO] Finished at: 2026-07-04T17:17:49Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadb -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadb -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 60
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Golden Config / Workload c
Timestamp: 2026-07-04T17:18:33+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp_11g89cb'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.130 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.786 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.129 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.262 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.854 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.521 s
[INFO] Finished at: 2026-07-04T17:18:27Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadc -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadc -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 69
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmppx9awgk9'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.116 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.775 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.123 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.251 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.861 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.485 s
[INFO] Finished at: 2026-07-04T17:18:32Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadc -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadc -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 59
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Golden Config / Workload d
Timestamp: 2026-07-04T17:19:17+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpw8zdgoqh'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.193 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.898 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.135 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.271 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  1.028 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.884 s
[INFO] Finished at: 2026-07-04T17:19:11Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadd -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadd -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 56
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpuwkbrfx4'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.136 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.759 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.121 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.244 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.850 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.466 s
[INFO] Finished at: 2026-07-04T17:19:17Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadd -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadd -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 55
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Golden Config / Workload e
Timestamp: 2026-07-04T17:20:01+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpd22o1spm'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.156 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.815 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.166 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.261 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.853 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.619 s
[INFO] Finished at: 2026-07-04T17:19:55Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloade -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloade -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 61
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpeuhqivwh'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.143 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.751 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.120 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.273 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.842 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.494 s
[INFO] Finished at: 2026-07-04T17:20:01Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloade -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloade -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 58
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```

## Phase: Golden Config / Workload f
Timestamp: 2026-07-04T17:20:44+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmps7pp6jv_'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.172 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.799 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.127 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.270 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.857 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.583 s
[INFO] Finished at: 2026-07-04T17:20:39Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadf -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadf -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
[OVERALL], RunTime(ms), 59
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpz5lf199y'
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by org.fusesource.jansi.internal.JansiLoader in an unnamed module (file:/opt/maven/lib/jansi-2.4.1.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper (file:/opt/maven/lib/guava-33.2.1-jre.jar)
WARNING: Please consider reporting this to the maintainers of class com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] YCSB Root                                                          [pom]
[INFO] Core YCSB                                                          [jar]
[INFO] Per Datastore Binding descriptor                                   [jar]
[INFO] YCSB Datastore Binding Parent                                      [pom]
[INFO] RocksDB Java Binding                                               [jar]
[INFO] 
[INFO] ---------------------------< site.ycsb:root >---------------------------
[INFO] Building YCSB Root 0.18.0-SNAPSHOT                                 [1/5]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ root ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ root ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ root ---
[INFO] 
[INFO] ---------------------------< site.ycsb:core >---------------------------
[INFO] Building Core YCSB 0.18.0-SNAPSHOT                                 [2/5]
[INFO]   from core/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ core ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ core ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ core ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] The encoding used to copy filtered properties files have not been set. This means that the same encoding will be used to copy filtered properties files as when copying other filtered resources. This might not be what you want! Run your build with --debug to see which files might be affected. Read more at https://maven.apache.org/plugins/maven-resources-plugin/examples/filtering-properties-files.html
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ core ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 63 source files to /home/meet/ycsb/YCSB/core/target/classes
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Some input files use or override a deprecated API.
[INFO] /home/meet/ycsb/YCSB/core/src/main/java/site/ycsb/DBFactory.java: Recompile with -Xlint:deprecation for details.
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ core ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/core/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ core ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ core ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ core ---
[INFO] Building jar: /home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ core ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] --------------< site.ycsb:datastore-specific-descriptor >---------------
[INFO] Building Per Datastore Binding descriptor 0.18.0-SNAPSHOT          [3/5]
[INFO]   from binding-parent/datastore-specific-descriptor/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ datastore-specific-descriptor ---
[INFO] Copying 1 resource from src/main/resources to target/classes
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ datastore-specific-descriptor ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/binding-parent/datastore-specific-descriptor/src/test/resources
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ datastore-specific-descriptor ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ datastore-specific-descriptor ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ datastore-specific-descriptor ---
[INFO] 
[INFO] --- dependency:3.7.0:list (default-cli) @ datastore-specific-descriptor ---
[INFO] Can't extract module name from htrace-core4-4.1.0-incubating.jar: Provider class com.fasterxml.jackson.core.JsonFactory not in JAR file htrace-core4-4.1.0-incubating.jar
[INFO] 
[INFO] ----------------------< site.ycsb:binding-parent >----------------------
[INFO] Building YCSB Datastore Binding Parent 0.18.0-SNAPSHOT             [4/5]
[INFO]   from binding-parent/pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ binding-parent ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ binding-parent ---
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ binding-parent ---
[INFO] 
[INFO] ---------------------< site.ycsb:rocksdb-binding >----------------------
[INFO] Building RocksDB Java Binding 0.18.0-SNAPSHOT                      [5/5]
[INFO]   from rocksdb/pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.0.0-M1:enforce (enforce-maven) @ rocksdb-binding ---
[INFO] 
[INFO] --- checkstyle:2.16:check (validate) @ rocksdb-binding ---
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ rocksdb-binding ---
[INFO] skip non existing resourceDirectory /home/meet/ycsb/YCSB/rocksdb/src/main/resources
[INFO] 
[INFO] --- compiler:3.7.0:compile (default-compile) @ rocksdb-binding ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/meet/ycsb/YCSB/rocksdb/target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ rocksdb-binding ---
[INFO] Copying 1 resource from src/test/resources to target/test-classes
[INFO] 
[INFO] --- compiler:3.7.0:testCompile (default-testCompile) @ rocksdb-binding ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.2.5:test (default-test) @ rocksdb-binding ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.4.1:jar (default-jar) @ rocksdb-binding ---
[INFO] Building jar: /home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar
[INFO] 
[INFO] --- dependency:2.10:copy-dependencies (stage-dependencies) @ rocksdb-binding ---
[INFO] org.slf4j:slf4j-api:jar:1.7.25 already exists in destination.
[INFO] net.jcip:jcip-annotations:jar:1.0 already exists in destination.
[INFO] org.slf4j:slf4j-simple:jar:1.7.25 already exists in destination.
[INFO] org.rocksdb:rocksdbjni:jar:6.2.2 already exists in destination.
[INFO] 
[INFO] --- assembly:2.5.5:single (default) @ rocksdb-binding ---
[WARNING] The following patterns were never triggered in this artifact exclusion filter:
o  '*:sources'

[INFO] Building tar: /home/meet/ycsb/YCSB/rocksdb/target/ycsb-rocksdb-binding-0.18.0-SNAPSHOT.tar.gz
[INFO] 
[INFO] --- dependency:2.10:list (default-cli) @ rocksdb-binding ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for YCSB Root 0.18.0-SNAPSHOT:
[INFO] 
[INFO] YCSB Root .......................................... SUCCESS [  1.113 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.789 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.119 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.262 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.861 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.491 s
[INFO] Finished at: 2026-07-04T17:20:44Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadf -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloadf -P /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_170341/cfg4_golden_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: pin_l0_filter_and_index_blocks_in_cache
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 57
[OVERALL], Throughput(ops/sec), 0.0
[TOTAL_GCS_G1_Young_Generation], Count, 0
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.0
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 0
[TOTAL_GC_TIME], Time(ms), 0
[TOTAL_GC_TIME_%], Time(%), 0.0
```
