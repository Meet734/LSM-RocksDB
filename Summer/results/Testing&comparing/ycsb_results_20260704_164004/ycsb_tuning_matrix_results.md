# YCSB Tuning Matrix Results
# Started: 2026-07-04T16:40:04+00:00
# ---

## Phase: cache_512MB
Timestamp: 2026-07-04T16:40:19+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp8w2ja3vr'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.698 s]
[INFO] Core YCSB .......................................... SUCCESS [  2.047 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.146 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.353 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.989 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  5.667 s
[INFO] Finished at: 2026-07-04T16:40:13Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_512MB.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_512MB_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_512MB.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_512MB_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_512MB_options.ini
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
[OVERALL], RunTime(ms), 66
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
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpl57_a2rg'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.197 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.844 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.140 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.293 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.921 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.754 s
[INFO] Finished at: 2026-07-04T16:40:19Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_512MB.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_512MB_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_512MB.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_512MB_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_512MB_options.ini
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

## Phase: cache_2GB
Timestamp: 2026-07-04T16:41:04+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpbhy6nugw'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.303 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.889 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.167 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.329 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.982 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  5.252 s
[INFO] Finished at: 2026-07-04T16:40:58Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_2GB.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_2GB_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_2GB.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_2GB_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_2GB_options.ini
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
[OVERALL], RunTime(ms), 65
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
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpmst8dp1t'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.269 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.813 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.131 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.276 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.877 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.745 s
[INFO] Finished at: 2026-07-04T16:41:04Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_2GB.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_2GB_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_2GB.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_2GB_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_2GB_options.ini
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

## Phase: cache_4GB
Timestamp: 2026-07-04T16:41:48+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpm63xnz3t'
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
[INFO] Core YCSB .......................................... SUCCESS [  1.778 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.149 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.279 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.866 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.604 s
[INFO] Finished at: 2026-07-04T16:41:42Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_4GB.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_4GB_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_4GB.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_4GB_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_4GB_options.ini
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
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpjx3yp7rt'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.133 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.769 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.138 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.344 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.853 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.586 s
[INFO] Finished at: 2026-07-04T16:41:48Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_4GB.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_4GB_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_4GB.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_4GB_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/cache_4GB_options.ini
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

## Phase: bloom_5bits
Timestamp: 2026-07-04T16:42:32+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp8o1bt1zx'
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
[INFO] Core YCSB .......................................... SUCCESS [  1.783 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.132 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.263 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.885 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.583 s
[INFO] Finished at: 2026-07-04T16:42:26Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_5bits.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_5bits_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_5bits.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_5bits_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_5bits_options.ini
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
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpwz989a2v'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.108 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.816 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.133 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.273 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.863 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.549 s
[INFO] Finished at: 2026-07-04T16:42:31Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_5bits.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_5bits_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_5bits.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_5bits_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_5bits_options.ini
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

## Phase: bloom_10bits
Timestamp: 2026-07-04T16:43:15+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp2i0vu0ss'
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
[INFO] Core YCSB .......................................... SUCCESS [  1.770 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.135 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.259 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.826 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.505 s
[INFO] Finished at: 2026-07-04T16:43:09Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_10bits.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_10bits_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_10bits.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_10bits_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_10bits_options.ini
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
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpkzo_tkxk'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.142 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.767 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.136 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.292 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.865 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.559 s
[INFO] Finished at: 2026-07-04T16:43:15Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_10bits.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_10bits_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_10bits.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_10bits_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_10bits_options.ini
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

## Phase: bloom_20bits
Timestamp: 2026-07-04T16:43:59+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpu5lkcc2e'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.142 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.766 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.129 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.265 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.855 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.515 s
[INFO] Finished at: 2026-07-04T16:43:53Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_20bits.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_20bits_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_20bits.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_20bits_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_20bits_options.ini
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
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpp_vte7rb'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.122 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.755 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.113 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.276 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.847 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.474 s
[INFO] Finished at: 2026-07-04T16:43:59Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_20bits.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_20bits_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_20bits.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_20bits_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/bloom_20bits_options.ini
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

## Phase: threads_1
Timestamp: 2026-07-04T16:44:43+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpdjxcgh2t'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.167 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.807 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.136 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.266 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.853 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.584 s
[INFO] Finished at: 2026-07-04T16:44:37Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_1.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_1_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_1.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_1_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_1_options.ini
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
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpe8h3zpfb'
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
[INFO] Core YCSB .......................................... SUCCESS [  1.762 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.135 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.301 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.844 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.580 s
[INFO] Finished at: 2026-07-04T16:44:43Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_1.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_1_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_1.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_1_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_1_options.ini
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

## Phase: threads_4
Timestamp: 2026-07-04T16:45:27+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmprwertquz'
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
[INFO] Core YCSB .......................................... SUCCESS [  1.775 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.125 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.284 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.846 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.525 s
[INFO] Finished at: 2026-07-04T16:45:20Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_4.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_4_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=4 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_4.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_4_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=4 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-2] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-2] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_4_options.ini
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
[Thread-3] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-3] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_4_options.ini
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
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
[Thread-4] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-4] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_4_options.ini
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
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_4_options.ini
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
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpib9h5xov'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.118 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.745 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.128 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.276 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.854 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.480 s
[INFO] Finished at: 2026-07-04T16:45:26Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_4.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_4_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=4 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_4.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_4_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=4 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-2] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-2] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_4_options.ini
Maximum execution time specified as: 1800 secs
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
[Thread-3] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
[Thread-3] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_4_options.ini
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
[Thread-4] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
[Thread-4] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_4_options.ini
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
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_4_options.ini
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

## Phase: threads_8
Timestamp: 2026-07-04T16:46:11+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpmnjxm8my'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.319 s]
[INFO] Core YCSB .......................................... SUCCESS [  2.103 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.154 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.294 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  1.035 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  5.296 s
[INFO] Finished at: 2026-07-04T16:46:05Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=8 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=8 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8_options.ini
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
[Thread-5] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
[Thread-5] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8_options.ini
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
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
[Thread-6] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
[Thread-6] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8_options.ini
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
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
[Thread-2] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
[Thread-2] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8_options.ini
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
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
[Thread-3] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
[Thread-3] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8_options.ini
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
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
[Thread-4] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
[Thread-4] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8_options.ini
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
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
[Thread-7] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
[Thread-7] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8_options.ini
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
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
[Thread-8] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-8] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8_options.ini
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
[OVERALL], RunTime(ms), 80
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
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpr9yymoex'
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
[INFO] Core YCSB .......................................... SUCCESS [  1.842 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.154 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.276 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.943 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.809 s
[INFO] Finished at: 2026-07-04T16:46:11Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=8 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=8 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8_options.ini
Maximum execution time specified as: 1800 secs
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
[Thread-5] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-5] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8_options.ini
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
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
[Thread-6] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
[Thread-6] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8_options.ini
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
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
[Thread-2] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
[Thread-2] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8_options.ini
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
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
[Thread-3] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-3] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8_options.ini
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
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
[Thread-4] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
[Thread-4] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8_options.ini
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
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
[Thread-7] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
[Thread-7] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8_options.ini
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
[Thread-8] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: bloom_bits
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-8] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/threads_8_options.ini
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
[OVERALL], RunTime(ms), 74
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

## Phase: wal_sync_1MB
Timestamp: 2026-07-04T16:46:57+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpi5k9diff'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.310 s]
[INFO] Core YCSB .......................................... SUCCESS [  2.143 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.140 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.277 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.855 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  5.114 s
[INFO] Finished at: 2026-07-04T16:46:50Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/wal_sync_1MB.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/wal_sync_1MB_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/wal_sync_1MB.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/wal_sync_1MB_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/wal_sync_1MB_options.ini
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
[OVERALL], RunTime(ms), 64
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
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpmt7q6q_n'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.317 s]
[INFO] Core YCSB .......................................... SUCCESS [  2.434 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.264 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.482 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.943 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  5.818 s
[INFO] Finished at: 2026-07-04T16:46:57Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/wal_sync_1MB.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/wal_sync_1MB_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/wal_sync_1MB.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/wal_sync_1MB_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/wal_sync_1MB_options.ini
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
[OVERALL], RunTime(ms), 73
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

## Phase: wal_async
Timestamp: 2026-07-04T16:47:42+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp69zcx3b6'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.250 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.858 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.131 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.274 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.987 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.898 s
[INFO] Finished at: 2026-07-04T16:47:35Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/wal_async.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/wal_async_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/wal_async.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/wal_async_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/wal_async_options.ini
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
[OVERALL], RunTime(ms), 74
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
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpnalfjwtn'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.702 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.933 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.096 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.270 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.886 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  5.335 s
[INFO] Finished at: 2026-07-04T16:47:42Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/wal_async.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/wal_async_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/wal_async.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/wal_async_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/wal_async_options.ini
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

## Phase: direct_reads_on
Timestamp: 2026-07-04T16:48:26+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpzdbofn4u'
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
[INFO] Core YCSB .......................................... SUCCESS [  1.819 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.143 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.367 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.843 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.682 s
[INFO] Finished at: 2026-07-04T16:48:20Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/direct_reads_on.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/direct_reads_on_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/direct_reads_on.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/direct_reads_on_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/direct_reads_on_options.ini
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
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpzglu2jur'
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
[INFO] Core YCSB .......................................... SUCCESS [  1.791 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.139 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.269 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.860 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.595 s
[INFO] Finished at: 2026-07-04T16:48:26Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/direct_reads_on.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/direct_reads_on_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/direct_reads_on.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/direct_reads_on_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/direct_reads_on_options.ini
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

## Phase: direct_reads_off
Timestamp: 2026-07-04T16:49:10+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpoxs4xjqg'
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
[INFO] Core YCSB .......................................... SUCCESS [  1.781 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.106 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.255 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.906 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.552 s
[INFO] Finished at: 2026-07-04T16:49:04Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/direct_reads_off.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/direct_reads_off_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/direct_reads_off.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/direct_reads_off_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/direct_reads_off_options.ini
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
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpbnh6kn_a'
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
[INFO] Core YCSB .......................................... SUCCESS [  1.797 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.129 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.281 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.868 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.626 s
[INFO] Finished at: 2026-07-04T16:49:10Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/direct_reads_off.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/direct_reads_off_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/direct_reads_off.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/direct_reads_off_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/direct_reads_off_options.ini
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

## Phase: pin_filters_on
Timestamp: 2026-07-04T16:49:55+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpc97wwtzt'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.324 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.877 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.147 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.269 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.892 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  5.032 s
[INFO] Finished at: 2026-07-04T16:49:48Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/pin_filters_on.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/pin_filters_on_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/pin_filters_on.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/pin_filters_on_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/pin_filters_on_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: cache_index_and_filter_blocks
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: cache_index_and_filter_blocks
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: cache_index_and_filter_blocks
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: cache_index_and_filter_blocks
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
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp1jey06c1'
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
[INFO] Core YCSB .......................................... SUCCESS [  2.023 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.168 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.298 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.918 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  5.083 s
[INFO] Finished at: 2026-07-04T16:49:55Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/pin_filters_on.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/pin_filters_on_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/pin_filters_on.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/pin_filters_on_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/pin_filters_on_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: cache_index_and_filter_blocks
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: cache_index_and_filter_blocks
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: cache_index_and_filter_blocks
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: cache_index_and_filter_blocks
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

## Phase: pin_filters_off
Timestamp: 2026-07-04T16:50:39+00:00
Exit code: 0
```
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpybuk83qw'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.167 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.855 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.133 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.248 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.862 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.615 s
[INFO] Finished at: 2026-07-04T16:50:32Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/pin_filters_off.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/pin_filters_off_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/pin_filters_off.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/pin_filters_off_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/pin_filters_off_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: cache_index_and_filter_blocks
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: cache_index_and_filter_blocks
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: cache_index_and_filter_blocks
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: cache_index_and_filter_blocks
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
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpqou258kq'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.191 s]
[INFO] Core YCSB .......................................... SUCCESS [  1.780 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.142 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.278 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  0.850 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.608 s
[INFO] Finished at: 2026-07-04T16:50:38Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/pin_filters_off.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/pin_filters_off_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -P /home/meet/ycsb/YCSB/workloads/workloada -P /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/pin_filters_off.properties -p rocksdb.optionsfile=/home/meet/ycsb/YCSB/ycsb_results_20260704_164004/pin_filters_off_options.ini -p rocksdb.dir=/mnt/d/rocksdb_ycsb -p recordcount=10000000 -p operationcount=10000000 -p threadcount=1 -p maxexecutiontime=1800 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
Maximum execution time specified as: 1800 secs
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /mnt/d/rocksdb_ycsb
[Thread-1] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB options file: /home/meet/ycsb/YCSB/ycsb_results_20260704_164004/pin_filters_off_options.ini
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: cache_index_and_filter_blocks
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: cache_index_and_filter_blocks
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
site.ycsb.DBException: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: cache_index_and_filter_blocks
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:80)
	at site.ycsb.DBWrapper.init(DBWrapper.java:90)
	at site.ycsb.ClientThread.run(ClientThread.java:91)
	at java.base/java.lang.Thread.run(Thread.java:1474)
Caused by: org.rocksdb.RocksDBException: Unrecognized option DBOptions:: cache_index_and_filter_blocks
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(Native Method)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:110)
	at org.rocksdb.OptionsUtil.loadOptionsFromFile(OptionsUtil.java:91)
	at site.ycsb.db.rocksdb.RocksDBClient.initRocksDBWithOptionsFile(RocksDBClient.java:105)
	at site.ycsb.db.rocksdb.RocksDBClient.init(RocksDBClient.java:75)
	... 3 more
Could not wait until max specified time, TerminatorThread interrupted.
[OVERALL], RunTime(ms), 65
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
