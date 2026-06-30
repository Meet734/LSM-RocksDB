## 1. Workload A
```shell
meet@DESKTOP-20D4N8C:~/ycsb/YCSB$ # Create a clean data directory for RocksDB
mkdir -p /tmp/ycsb-rocksdb-data

# Workload A: Load phase (insert data)
./bin/ycsb load rocksdb -s -P workloads/workloada \
  -p rocksdb.dir=/tmp/ycsb-rocksdb-data \
  -p recordcount=1000000 \
  -p threadcount=8

# Workload A: Run phase (50% read, 50% update)
./bin/ycsb run rocksdb -s -P workloads/workloada \
  -p rocksdb.dir=/tmp/ycsb-rocksdb-data \
  -p recordcount=1000000 \
  -p operationcount=1000000 \
  -p threadcount=8
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp89okhg5a'
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
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-install-plugin/3.1.2/maven-install-plugin-3.1.2.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-install-plugin/3.1.2/maven-install-plugin-3.1.2.pom (8.5 kB at 19 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-install-plugin/3.1.2/maven-install-plugin-3.1.2.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-install-plugin/3.1.2/maven-install-plugin-3.1.2.jar (32 kB at 719 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-deploy-plugin/3.1.2/maven-deploy-plugin-3.1.2.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-deploy-plugin/3.1.2/maven-deploy-plugin-3.1.2.pom (9.6 kB at 259 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-deploy-plugin/3.1.2/maven-deploy-plugin-3.1.2.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-deploy-plugin/3.1.2/maven-deploy-plugin-3.1.2.jar (40 kB at 1.0 MB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-site-plugin/3.12.1/maven-site-plugin-3.12.1.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-site-plugin/3.12.1/maven-site-plugin-3.12.1.pom (20 kB at 523 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-plugins/36/maven-plugins-36.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-plugins/36/maven-plugins-36.pom (9.9 kB at 254 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-site-plugin/3.12.1/maven-site-plugin-3.12.1.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-site-plugin/3.12.1/maven-site-plugin-3.12.1.jar (119 kB at 2.3 MB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-antrun-plugin/3.1.0/maven-antrun-plugin-3.1.0.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-antrun-plugin/3.1.0/maven-antrun-plugin-3.1.0.pom (9.1 kB at 207 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-plugins/34/maven-plugins-34.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-plugins/34/maven-plugins-34.pom (11 kB at 289 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-antrun-plugin/3.1.0/maven-antrun-plugin-3.1.0.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-antrun-plugin/3.1.0/maven-antrun-plugin-3.1.0.jar (41 kB at 1.1 MB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-assembly-plugin/3.7.1/maven-assembly-plugin-3.7.1.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-assembly-plugin/3.7.1/maven-assembly-plugin-3.7.1.pom (15 kB at 338 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-plugins/41/maven-plugins-41.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-plugins/41/maven-plugins-41.pom (7.4 kB at 204 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-assembly-plugin/3.7.1/maven-assembly-plugin-3.7.1.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-assembly-plugin/3.7.1/maven-assembly-plugin-3.7.1.jar (240 kB at 3.1 MB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-dependency-plugin/3.7.0/maven-dependency-plugin-3.7.0.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-dependency-plugin/3.7.0/maven-dependency-plugin-3.7.0.pom (19 kB at 434 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-dependency-plugin/3.7.0/maven-dependency-plugin-3.7.0.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-dependency-plugin/3.7.0/maven-dependency-plugin-3.7.0.jar (207 kB at 3.1 MB/s)
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
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.12.0/doxia-sink-api-1.12.0.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.12.0/doxia-sink-api-1.12.0.pom (1.5 kB at 38 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia/1.12.0/doxia-1.12.0.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia/1.12.0/doxia-1.12.0.pom (18 kB at 391 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-logging-api/1.12.0/doxia-logging-api-1.12.0.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-logging-api/1.12.0/doxia-logging-api-1.12.0.pom (1.5 kB at 44 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-api/3.1.1/maven-reporting-api-3.1.1.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-api/3.1.1/maven-reporting-api-3.1.1.pom (3.8 kB at 92 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.11.1/doxia-sink-api-1.11.1.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.11.1/doxia-sink-api-1.11.1.pom (1.6 kB at 42 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia/1.11.1/doxia-1.11.1.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia/1.11.1/doxia-1.11.1.pom (18 kB at 515 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-logging-api/1.11.1/doxia-logging-api-1.11.1.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-logging-api/1.11.1/doxia-logging-api-1.11.1.pom (1.6 kB at 49 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-impl/3.2.0/maven-reporting-impl-3.2.0.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-impl/3.2.0/maven-reporting-impl-3.2.0.pom (7.6 kB at 181 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-decoration-model/1.11.1/doxia-decoration-model-1.11.1.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-decoration-model/1.11.1/doxia-decoration-model-1.11.1.pom (3.4 kB at 76 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sitetools/1.11.1/doxia-sitetools-1.11.1.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sitetools/1.11.1/doxia-sitetools-1.11.1.pom (14 kB at 256 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/2.0.0/plexus-component-annotations-2.0.0.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/2.0.0/plexus-component-annotations-2.0.0.pom (750 B at 20 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-containers/2.0.0/plexus-containers-2.0.0.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-containers/2.0.0/plexus-containers-2.0.0.pom (4.8 kB at 117 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-core/1.11.1/doxia-core-1.11.1.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-core/1.11.1/doxia-core-1.11.1.pom (4.5 kB at 126 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/commons/commons-lang3/3.8.1/commons-lang3-3.8.1.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/commons/commons-lang3/3.8.1/commons-lang3-3.8.1.pom (28 kB at 680 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/commons/commons-parent/47/commons-parent-47.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/commons/commons-parent/47/commons-parent-47.pom (78 kB at 1.6 MB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/apache/19/apache-19.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/apache/19/apache-19.pom (15 kB at 443 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/commons/commons-text/1.12.0/commons-text-1.12.0.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/commons/commons-text/1.12.0/commons-text-1.12.0.pom (20 kB at 536 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpclient/4.5.13/httpclient-4.5.13.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpclient/4.5.13/httpclient-4.5.13.pom (6.6 kB at 179 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcomponents-client/4.5.13/httpcomponents-client-4.5.13.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcomponents-client/4.5.13/httpcomponents-client-4.5.13.pom (16 kB at 443 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcomponents-parent/11/httpcomponents-parent-11.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcomponents-parent/11/httpcomponents-parent-11.pom (35 kB at 789 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/apache/21/apache-21.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/apache/21/apache-21.pom (17 kB at 489 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcore/4.4.13/httpcore-4.4.13.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcore/4.4.13/httpcore-4.4.13.pom (5.0 kB at 138 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcomponents-core/4.4.13/httpcomponents-core-4.4.13.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcomponents-core/4.4.13/httpcomponents-core-4.4.13.pom (13 kB at 387 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.2/commons-logging-1.2.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.2/commons-logging-1.2.pom (19 kB at 534 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/commons-codec/commons-codec/1.11/commons-codec-1.11.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/commons-codec/commons-codec/1.11/commons-codec-1.11.pom (14 kB at 377 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcore/4.4.14/httpcore-4.4.14.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcore/4.4.14/httpcore-4.4.14.pom (5.0 kB at 134 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcomponents-core/4.4.14/httpcomponents-core-4.4.14.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcomponents-core/4.4.14/httpcomponents-core-4.4.14.pom (13 kB at 387 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-integration-tools/1.11.1/doxia-integration-tools-1.11.1.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-integration-tools/1.11.1/doxia-integration-tools-1.11.1.pom (6.0 kB at 173 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-i18n/1.0-beta-10/plexus-i18n-1.0-beta-10.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-i18n/1.0-beta-10/plexus-i18n-1.0-beta-10.pom (2.1 kB at 63 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-site-renderer/1.11.1/doxia-site-renderer-1.11.1.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-site-renderer/1.11.1/doxia-site-renderer-1.11.1.pom (7.7 kB at 233 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-skin-model/1.11.1/doxia-skin-model-1.11.1.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-skin-model/1.11.1/doxia-skin-model-1.11.1.pom (3.0 kB at 95 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-module-xhtml/1.11.1/doxia-module-xhtml-1.11.1.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-module-xhtml/1.11.1/doxia-module-xhtml-1.11.1.pom (2.0 kB at 48 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-modules/1.11.1/doxia-modules-1.11.1.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-modules/1.11.1/doxia-modules-1.11.1.pom (2.7 kB at 78 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-module-xhtml5/1.11.1/doxia-module-xhtml5-1.11.1.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-module-xhtml5/1.11.1/doxia-module-xhtml5-1.11.1.pom (2.0 kB at 51 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-velocity/1.2/plexus-velocity-1.2.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-velocity/1.2/plexus-velocity-1.2.pom (2.8 kB at 81 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/velocity/velocity/1.7/velocity-1.7.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/velocity/velocity/1.7/velocity-1.7.pom (11 kB at 286 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/commons-collections/commons-collections/3.2.2/commons-collections-3.2.2.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/commons-collections/commons-collections/3.2.2/commons-collections-3.2.2.pom (12 kB at 365 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-xml/3.0.0/plexus-xml-3.0.0.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-xml/3.0.0/plexus-xml-3.0.0.pom (3.7 kB at 93 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-dependency-analyzer/1.14.1/maven-dependency-analyzer-1.14.1.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-dependency-analyzer/1.14.1/maven-dependency-analyzer-1.14.1.pom (6.4 kB at 187 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/42/maven-shared-components-42.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/42/maven-shared-components-42.pom (3.8 kB at 114 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/assertj/assertj-bom/3.25.3/assertj-bom-3.25.3.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/assertj/assertj-bom/3.25.3/assertj-bom-3.25.3.pom (3.7 kB at 102 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/ow2/asm/asm/9.7/asm-9.7.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/ow2/asm/asm/9.7/asm-9.7.pom (2.4 kB at 58 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-dependency-tree/3.3.0/maven-dependency-tree-3.3.0.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-dependency-tree/3.3.0/maven-dependency-tree-3.3.0.pom (7.0 kB at 184 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-util/1.4.1/maven-resolver-util-1.4.1.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-util/1.4.1/maven-resolver-util-1.4.1.pom (2.8 kB at 80 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver/1.4.1/maven-resolver-1.4.1.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver/1.4.1/maven-resolver-1.4.1.pom (18 kB at 519 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/33/maven-parent-33.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/33/maven-parent-33.pom (44 kB at 1.3 MB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-api/1.4.1/maven-resolver-api-1.4.1.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-api/1.4.1/maven-resolver-api-1.4.1.pom (2.6 kB at 73 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-common-artifact-filters/3.3.2/maven-common-artifact-filters-3.3.2.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-common-artifact-filters/3.3.2/maven-common-artifact-filters-3.3.2.pom (5.3 kB at 151 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/37/maven-shared-components-37.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/37/maven-shared-components-37.pom (4.9 kB at 132 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/37/maven-parent-37.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/37/maven-parent-37.pom (46 kB at 1.2 MB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/apache/27/apache-27.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/apache/27/apache-27.pom (20 kB at 636 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-artifact-transfer/0.13.1/maven-artifact-transfer-0.13.1.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-artifact-transfer/0.13.1/maven-artifact-transfer-0.13.1.pom (11 kB at 288 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-common-artifact-filters/3.1.0/maven-common-artifact-filters-3.1.0.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-common-artifact-filters/3.1.0/maven-common-artifact-filters-3.1.0.pom (5.3 kB at 147 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/33/maven-shared-components-33.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/33/maven-shared-components-33.pom (5.1 kB at 154 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/1.5.4/plexus-component-annotations-1.5.4.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/1.5.4/plexus-component-annotations-1.5.4.pom (815 B at 23 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-containers/1.5.4/plexus-containers-1.5.4.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-containers/1.5.4/plexus-containers-1.5.4.pom (4.2 kB at 128 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/2.0.5/plexus-2.0.5.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/2.0.5/plexus-2.0.5.pom (17 kB at 423 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/1.7.5/slf4j-api-1.7.5.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/1.7.5/slf4j-api-1.7.5.pom (2.7 kB at 73 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/slf4j/slf4j-parent/1.7.5/slf4j-parent-1.7.5.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/slf4j/slf4j-parent/1.7.5/slf4j-parent-1.7.5.pom (12 kB at 347 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.4.2/maven-shared-utils-3.4.2.pom
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.4.2/maven-shared-utils-3.4.2.pom (5.9 kB at 174 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.12.0/doxia-sink-api-1.12.0.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.12.0/doxia-sink-api-1.12.0.jar (12 kB at 362 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-logging-api/1.12.0/doxia-logging-api-1.12.0.jar
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-api/3.1.1/maven-reporting-api-3.1.1.jar
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-impl/3.2.0/maven-reporting-impl-3.2.0.jar
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-decoration-model/1.11.1/doxia-decoration-model-1.11.1.jar
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-core/1.11.1/doxia-core-1.11.1.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-api/3.1.1/maven-reporting-api-3.1.1.jar (11 kB at 330 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/commons/commons-lang3/3.8.1/commons-lang3-3.8.1.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-logging-api/1.12.0/doxia-logging-api-1.12.0.jar (12 kB at 122 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/commons/commons-text/1.12.0/commons-text-1.12.0.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-impl/3.2.0/maven-reporting-impl-3.2.0.jar (20 kB at 208 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpclient/4.5.13/httpclient-4.5.13.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-decoration-model/1.11.1/doxia-decoration-model-1.11.1.jar (60 kB at 543 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.2/commons-logging-1.2.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.2/commons-logging-1.2.jar (62 kB at 322 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcore/4.4.14/httpcore-4.4.14.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-core/1.11.1/doxia-core-1.11.1.jar (218 kB at 1.0 MB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-integration-tools/1.11.1/doxia-integration-tools-1.11.1.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/commons/commons-text/1.12.0/commons-text-1.12.0.jar (251 kB at 829 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-site-renderer/1.11.1/doxia-site-renderer-1.11.1.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-integration-tools/1.11.1/doxia-integration-tools-1.11.1.jar (47 kB at 135 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-skin-model/1.11.1/doxia-skin-model-1.11.1.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/commons/commons-lang3/3.8.1/commons-lang3-3.8.1.jar (502 kB at 1.3 MB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-module-xhtml/1.11.1/doxia-module-xhtml-1.11.1.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-site-renderer/1.11.1/doxia-site-renderer-1.11.1.jar (65 kB at 171 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-module-xhtml5/1.11.1/doxia-module-xhtml5-1.11.1.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-skin-model/1.11.1/doxia-skin-model-1.11.1.jar (16 kB at 42 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-velocity/1.2/plexus-velocity-1.2.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-module-xhtml/1.11.1/doxia-module-xhtml-1.11.1.jar (17 kB at 42 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/velocity/velocity/1.7/velocity-1.7.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcore/4.4.14/httpcore-4.4.14.jar (328 kB at 778 kB/s)
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-module-xhtml5/1.11.1/doxia-module-xhtml5-1.11.1.jar (18 kB at 42 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/commons-lang/commons-lang/2.4/commons-lang-2.4.jar
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/commons-digester/commons-digester/1.8/commons-digester-1.8.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-velocity/1.2/plexus-velocity-1.2.jar (8.1 kB at 19 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/commons-collections/commons-collections/3.2.2/commons-collections-3.2.2.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/commons-digester/commons-digester/1.8/commons-digester-1.8.jar (144 kB at 247 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-xml/3.0.0/plexus-xml-3.0.0.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpclient/4.5.13/httpclient-4.5.13.jar (780 kB at 1.3 MB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-i18n/1.0-beta-10/plexus-i18n-1.0-beta-10.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/commons-lang/commons-lang/2.4/commons-lang-2.4.jar (262 kB at 398 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-dependency-analyzer/1.14.1/maven-dependency-analyzer-1.14.1.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-i18n/1.0-beta-10/plexus-i18n-1.0-beta-10.jar (12 kB at 18 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/ow2/asm/asm/9.7/asm-9.7.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-xml/3.0.0/plexus-xml-3.0.0.jar (93 kB at 138 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-dependency-tree/3.3.0/maven-dependency-tree-3.3.0.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-dependency-analyzer/1.14.1/maven-dependency-analyzer-1.14.1.jar (42 kB at 59 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-common-artifact-filters/3.3.2/maven-common-artifact-filters-3.3.2.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-dependency-tree/3.3.0/maven-dependency-tree-3.3.0.jar (43 kB at 58 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-artifact-transfer/0.13.1/maven-artifact-transfer-0.13.1.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/velocity/velocity/1.7/velocity-1.7.jar (450 kB at 590 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/2.0.0/plexus-component-annotations-2.0.0.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-common-artifact-filters/3.3.2/maven-common-artifact-filters-3.3.2.jar (58 kB at 75 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.4.2/maven-shared-utils-3.4.2.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/ow2/asm/asm/9.7/asm-9.7.jar (125 kB at 161 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-util/1.4.1/maven-resolver-util-1.4.1.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/2.0.0/plexus-component-annotations-2.0.0.jar (4.2 kB at 5.3 kB/s)
[INFO] Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-api/1.4.1/maven-resolver-api-1.4.1.jar
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/commons-collections/commons-collections/3.2.2/commons-collections-3.2.2.jar (588 kB at 689 kB/s)
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-artifact-transfer/0.13.1/maven-artifact-transfer-0.13.1.jar (159 kB at 185 kB/s)
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.4.2/maven-shared-utils-3.4.2.jar (151 kB at 169 kB/s)
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-api/1.4.1/maven-resolver-api-1.4.1.jar (149 kB at 164 kB/s)
[INFO] Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-util/1.4.1/maven-resolver-util-1.4.1.jar (168 kB at 185 kB/s)
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
[INFO] YCSB Root .......................................... SUCCESS [  5.282 s]
[INFO] Core YCSB .......................................... SUCCESS [  3.141 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.188 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.485 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  1.299 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  12.383 s
[INFO] Finished at: 2026-06-30T04:47:38Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloada -p rocksdb.dir=/tmp/ycsb-rocksdb-data -p recordcount=1000000 -p threadcount=8 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloada -p rocksdb.dir=/tmp/ycsb-rocksdb-data -p recordcount=1000000 -p threadcount=8 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-7] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /tmp/ycsb-rocksdb-data
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

2026-06-30 04:47:38:649 0 sec: 0 operations; est completion in 0 second
DBWrapper: report latency for each error is false and specific error codes to track for latency are: []
2026-06-30 04:47:48:172 9 sec: 1000000 operations; 104449.55 current ops/sec; [CLEANUP: Count=8, Max=38399, Min=4, Avg=4809.75, 50=14, 90=38399, 99=38399, 99.9=38399, 99.99=38399] [INSERT: Count=1000000, Max=172671, Min=4, Avg=73.2, 50=33, 90=104, 99=575, 99.9=1793, 99.99=5063]
[OVERALL], RunTime(ms), 9574
[OVERALL], Throughput(ops/sec), 104449.55086693127
[TOTAL_GCS_G1_Young_Generation], Count, 63
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 128
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 1.3369542510967203
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 63
[TOTAL_GC_TIME], Time(ms), 128
[TOTAL_GC_TIME_%], Time(%), 1.3369542510967203
[CLEANUP], Operations, 8
[CLEANUP], AverageLatency(us), 4809.75
[CLEANUP], MinLatency(us), 4
[CLEANUP], MaxLatency(us), 38399
[CLEANUP], 50thPercentileLatency(us), 14
[CLEANUP], 95thPercentileLatency(us), 38399
[CLEANUP], 99thPercentileLatency(us), 38399
[INSERT], Operations, 1000000
[INSERT], AverageLatency(us), 73.198811
[INSERT], MinLatency(us), 4
[INSERT], MaxLatency(us), 172671
[INSERT], 50thPercentileLatency(us), 33
[INSERT], 95thPercentileLatency(us), 276
[INSERT], 99thPercentileLatency(us), 575
[INSERT], Return=OK, 1000000
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpzegw4792'
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
[INFO] YCSB Root .......................................... SUCCESS [  2.267 s]
[INFO] Core YCSB .......................................... SUCCESS [  3.390 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.219 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.511 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  1.344 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  8.346 s
[INFO] Finished at: 2026-06-30T04:47:58Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloada -p rocksdb.dir=/tmp/ycsb-rocksdb-data -p recordcount=1000000 -p operationcount=1000000 -p threadcount=8 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloada -p rocksdb.dir=/tmp/ycsb-rocksdb-data -p recordcount=1000000 -p operationcount=1000000 -p threadcount=8 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-7] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /tmp/ycsb-rocksdb-data
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

2026-06-30 04:47:58:317 0 sec: 0 operations; est completion in 0 second
DBWrapper: report latency for each error is false and specific error codes to track for latency are: []
2026-06-30 04:48:08:272 10 sec: 726835 operations; 72683.5 current ops/sec; est completion in 4 second [READ: Count=362936, Max=10719, Min=1, Avg=56.15, 50=38, 90=102, 99=339, 99.9=2093, 99.99=4547] [UPDATE: Count=364630, Max=170111, Min=7, Avg=139.23, 50=70, 90=265, 99=1117, 99.9=3599, 99.99=10183]
2026-06-30 04:48:11:737 13 sec: 1000000 operations; 78835.5 current ops/sec; [READ: Count=136788, Max=7811, Min=2, Avg=48.17, 50=34, 90=73, 99=377, 99.9=2355, 99.99=4255] [CLEANUP: Count=8, Max=35039, Min=13, Avg=4398.12, 50=17, 90=35039, 99=35039, 99.9=35039, 99.99=35039] [UPDATE: Count=135646, Max=113023, Min=7, Avg=142.87, 50=63, 90=303, 99=1470, 99.9=4039, 99.99=7971]
[OVERALL], RunTime(ms), 13465
[OVERALL], Throughput(ops/sec), 74266.61715558857
[TOTAL_GCS_G1_Young_Generation], Count, 57
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 139
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 1.0323059784626811
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 57
[TOTAL_GC_TIME], Time(ms), 139
[TOTAL_GC_TIME_%], Time(%), 1.0323059784626811
[READ], Operations, 499724
[READ], AverageLatency(us), 53.96766815282036
[READ], MinLatency(us), 1
[READ], MaxLatency(us), 10719
[READ], 50thPercentileLatency(us), 37
[READ], 95thPercentileLatency(us), 121
[READ], 99thPercentileLatency(us), 348
[READ], Return=OK, 499724
[CLEANUP], Operations, 8
[CLEANUP], AverageLatency(us), 4398.125
[CLEANUP], MinLatency(us), 13
[CLEANUP], MaxLatency(us), 35039
[CLEANUP], 50thPercentileLatency(us), 17
[CLEANUP], 95thPercentileLatency(us), 35039
[CLEANUP], 99thPercentileLatency(us), 35039
[UPDATE], Operations, 500276
[UPDATE], AverageLatency(us), 140.2146135333296
[UPDATE], MinLatency(us), 7
[UPDATE], MaxLatency(us), 170111
[UPDATE], 50thPercentileLatency(us), 67
[UPDATE], 95thPercentileLatency(us), 493
[UPDATE], 99thPercentileLatency(us), 1224
[UPDATE], Return=OK, 500276
```
### 2. Workload B - Read Mostly (95% read, 5% update)
```shell
meet@DESKTOP-20D4N8C:~/ycsb/YCSB$ ./bin/ycsb run rocksdb -s -P workloads/workloadb \
  -p rocksdb.dir=/tmp/ycsb-rocksdb-data \
  -p recordcount=1000000 \
  -p operationcount=1000000 \
  -p threadcount=8
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp3znbjkgv'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.789 s]
[INFO] Core YCSB .......................................... SUCCESS [  2.658 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.216 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.405 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  1.225 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  6.820 s
[INFO] Finished at: 2026-06-30T04:54:30Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadb -p rocksdb.dir=/tmp/ycsb-rocksdb-data -p recordcount=1000000 -p operationcount=1000000 -p threadcount=8 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadb -p rocksdb.dir=/tmp/ycsb-rocksdb-data -p recordcount=1000000 -p operationcount=1000000 -p threadcount=8 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-7] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /tmp/ycsb-rocksdb-data
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

2026-06-30 04:54:30:968 0 sec: 0 operations; est completion in 0 second
DBWrapper: report latency for each error is false and specific error codes to track for latency are: []
2026-06-30 04:54:37:671 6 sec: 1000000 operations; 148235.99 current ops/sec; [READ: Count=949684, Max=11655, Min=1, Avg=46.21, 50=36, 90=75, 99=237, 99.9=1877, 99.99=4807] [CLEANUP: Count=8, Max=32831, Min=9, Avg=4119.25, 50=13, 90=32831, 99=32831, 99.9=32831, 99.99=32831] [UPDATE: Count=50316, Max=30239, Min=8, Avg=83.16, 50=61, 90=114, 99=533, 99.9=2781, 99.99=26783]
[OVERALL], RunTime(ms), 6746
[OVERALL], Throughput(ops/sec), 148235.99169878446
[TOTAL_GCS_G1_Young_Generation], Count, 30
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 77
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 1.1414171360806404
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 30
[TOTAL_GC_TIME], Time(ms), 77
[TOTAL_GC_TIME_%], Time(%), 1.1414171360806404
[READ], Operations, 949684
[READ], AverageLatency(us), 46.2113134474204
[READ], MinLatency(us), 1
[READ], MaxLatency(us), 11655
[READ], 50thPercentileLatency(us), 36
[READ], 95thPercentileLatency(us), 97
[READ], 99thPercentileLatency(us), 237
[READ], Return=OK, 949684
[CLEANUP], Operations, 8
[CLEANUP], AverageLatency(us), 4119.25
[CLEANUP], MinLatency(us), 9
[CLEANUP], MaxLatency(us), 32831
[CLEANUP], 50thPercentileLatency(us), 13
[CLEANUP], 95thPercentileLatency(us), 32831
[CLEANUP], 99thPercentileLatency(us), 32831
[UPDATE], Operations, 50316
[UPDATE], AverageLatency(us), 83.15670959535734
[UPDATE], MinLatency(us), 8
[UPDATE], MaxLatency(us), 30239
[UPDATE], 50thPercentileLatency(us), 61
[UPDATE], 95thPercentileLatency(us), 153
[UPDATE], 99thPercentileLatency(us), 533
[UPDATE], Return=OK, 50316
```
### 3. Workload C — Read Only (100% read)
```shell
meet@DESKTOP-20D4N8C:~/ycsb/YCSB$ ./bin/ycsb run rocksdb -s -P workloads/workloadc \
  -p rocksdb.dir=/tmp/ycsb-rocksdb-data \
  -p recordcount=1000000 \
  -p operationcount=1000000 \
  -p threadcount=8
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpa_l5cpgd'
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
[INFO] YCSB Root .......................................... SUCCESS [  2.261 s]
[INFO] Core YCSB .......................................... SUCCESS [  3.091 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.211 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.502 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  1.344 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  7.997 s
[INFO] Finished at: 2026-06-30T05:06:00Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadc -p rocksdb.dir=/tmp/ycsb-rocksdb-data -p recordcount=1000000 -p operationcount=1000000 -p threadcount=8 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadc -p rocksdb.dir=/tmp/ycsb-rocksdb-data -p recordcount=1000000 -p operationcount=1000000 -p threadcount=8 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-7] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /tmp/ycsb-rocksdb-data
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

2026-06-30 05:06:00:784 0 sec: 0 operations; est completion in 0 second
DBWrapper: report latency for each error is false and specific error codes to track for latency are: []
2026-06-30 05:06:07:162 6 sec: 1000000 operations; 155787.51 current ops/sec; [READ: Count=1000000, Max=10695, Min=1, Avg=46.05, 50=36, 90=79, 99=205, 99.9=1266, 99.99=3851] [CLEANUP: Count=8, Max=97855, Min=6, Avg=12240.12, 50=13, 90=97855, 99=97855, 99.9=97855, 99.99=97855]
[OVERALL], RunTime(ms), 6419
[OVERALL], Throughput(ops/sec), 155787.50584203147
[TOTAL_GCS_G1_Young_Generation], Count, 27
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 65
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 1.0126187879732047
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 27
[TOTAL_GC_TIME], Time(ms), 65
[TOTAL_GC_TIME_%], Time(%), 1.0126187879732047
[READ], Operations, 1000000
[READ], AverageLatency(us), 46.051292
[READ], MinLatency(us), 1
[READ], MaxLatency(us), 10695
[READ], 50thPercentileLatency(us), 36
[READ], 95thPercentileLatency(us), 97
[READ], 99thPercentileLatency(us), 205
[READ], Return=OK, 1000000
[CLEANUP], Operations, 8
[CLEANUP], AverageLatency(us), 12240.125
[CLEANUP], MinLatency(us), 6
[CLEANUP], MaxLatency(us), 97855
[CLEANUP], 50thPercentileLatency(us), 13
[CLEANUP], 95thPercentileLatency(us), 97855
[CLEANUP], 99thPercentileLatency(us), 97855
```
### 4. Workload D - Read Latest (latest read + insert)
```shell
meet@DESKTOP-20D4N8C:~/ycsb/YCSB$ ./bin/ycsb run rocksdb -s -P workloads/workloadd \
  -p rocksdb.dir=/tmp/ycsb-rocksdb-data \
  -p recordcount=1000000 \
  -p operationcount=1000000 \
  -p threadcount=8
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpr61v3tw9'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.866 s]
[INFO] Core YCSB .......................................... SUCCESS [  2.708 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.168 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.409 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  1.252 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  6.964 s
[INFO] Finished at: 2026-06-30T05:07:31Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadd -p rocksdb.dir=/tmp/ycsb-rocksdb-data -p recordcount=1000000 -p operationcount=1000000 -p threadcount=8 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadd -p rocksdb.dir=/tmp/ycsb-rocksdb-data -p recordcount=1000000 -p operationcount=1000000 -p threadcount=8 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-7] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /tmp/ycsb-rocksdb-data
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

2026-06-30 05:07:32:134 0 sec: 0 operations; est completion in 0 second
DBWrapper: report latency for each error is false and specific error codes to track for latency are: []
2026-06-30 05:07:34:271 2 sec: 1000000 operations; 459770.11 current ops/sec; [READ: Count=949665, Max=15311, Min=1, Avg=13.18, 50=4, 90=28, 99=69, 99.9=460, 99.99=4535] [CLEANUP: Count=8, Max=18911, Min=4, Avg=2373.38, 50=11, 90=18911, 99=18911, 99.9=18911, 99.99=18911] [INSERT: Count=50335, Max=46783, Min=5, Avg=40.46, 50=19, 90=39, 99=385, 99.9=3059, 99.99=12255]
[OVERALL], RunTime(ms), 2175
[OVERALL], Throughput(ops/sec), 459770.1149425287
[TOTAL_GCS_G1_Young_Generation], Count, 23
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 60
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 2.7586206896551726
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 23
[TOTAL_GC_TIME], Time(ms), 60
[TOTAL_GC_TIME_%], Time(%), 2.7586206896551726
[READ], Operations, 949665
[READ], AverageLatency(us), 13.182847635745237
[READ], MinLatency(us), 1
[READ], MaxLatency(us), 15311
[READ], 50thPercentileLatency(us), 4
[READ], 95thPercentileLatency(us), 37
[READ], 99thPercentileLatency(us), 69
[READ], Return=OK, 949665
[CLEANUP], Operations, 8
[CLEANUP], AverageLatency(us), 2373.375
[CLEANUP], MinLatency(us), 4
[CLEANUP], MaxLatency(us), 18911
[CLEANUP], 50thPercentileLatency(us), 11
[CLEANUP], 95thPercentileLatency(us), 18911
[CLEANUP], 99thPercentileLatency(us), 18911
[INSERT], Operations, 50335
[INSERT], AverageLatency(us), 40.45654117413331
[INSERT], MinLatency(us), 5
[INSERT], MaxLatency(us), 46783
[INSERT], 50thPercentileLatency(us), 19
[INSERT], 95thPercentileLatency(us), 72
[INSERT], 99thPercentileLatency(us), 385
[INSERT], Return=OK, 50335
```
### 5. Workload E - Short Ranges (scan + insert)
```shell
meet@DESKTOP-20D4N8C:~/ycsb/YCSB$ ./bin/ycsb run rocksdb -s -P workloads/workloade \
  -p rocksdb.dir=/tmp/ycsb-rocksdb-data \
  -p recordcount=1000000 \
  -p operationcount=1000000 \
  -p threadcount=8
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp1_tc768o'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.749 s]
[INFO] Core YCSB .......................................... SUCCESS [  2.729 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.205 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.439 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  1.225 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  6.882 s
[INFO] Finished at: 2026-06-30T05:08:37Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloade -p rocksdb.dir=/tmp/ycsb-rocksdb-data -p recordcount=1000000 -p operationcount=1000000 -p threadcount=8 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloade -p rocksdb.dir=/tmp/ycsb-rocksdb-data -p recordcount=1000000 -p operationcount=1000000 -p threadcount=8 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-7] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /tmp/ycsb-rocksdb-data
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

2026-06-30 05:08:37:538 0 sec: 0 operations; est completion in 0 second
DBWrapper: report latency for each error is false and specific error codes to track for latency are: []
2026-06-30 05:08:47:501 10 sec: 227303 operations; 22728.03 current ops/sec; est completion in 34 seconds [SCAN-LATENCY-PER-RECORD: Count=216071, Max=2905, Min=1, Avg=8.66, 50=6, 90=12, 99=61, 99.9=176, 99.99=854] [INSERT: Count=11280, Max=53791, Min=8, Avg=70.33, 50=35, 90=89, 99=420, 99.9=3389, 99.99=26367] [SCAN: Count=216352, Max=21071, Min=12, Avg=349.77, 50=298, 90=559, 99=1608, 99.9=5047, 99.99=9287]
2026-06-30 05:08:57:498 20 sec: 482027 operations; 25474.95 current ops/sec; est completion in 22 seconds [SCAN-LATENCY-PER-RECORD: Count=241906, Max=3523, Min=1, Avg=8.06, 50=6, 90=11, 99=56, 99.9=122, 99.99=431] [INSERT: Count=12798, Max=3651, Min=8, Avg=44.75, 50=35, 90=71, 99=172, 99.9=413, 99.99=3421] [SCAN: Count=241702, Max=11231, Min=6, Avg=325.42, 50=296, 90=536, 99=819, 99.9=4041, 99.99=5259]
2026-06-30 05:09:07:498 30 sec: 725508 operations; 24348.1 current ops/sec; est completion in 12 seconds [SCAN-LATENCY-PER-RECORD: Count=231353, Max=3143, Min=1, Avg=8.56, 50=6, 90=12, 99=61, 99.9=143, 99.99=606] [INSERT: Count=12120, Max=4219, Min=9, Avg=53.45, 50=40, 90=79, 99=259, 99.9=1078, 99.99=3437] [SCAN: Count=231325, Max=10735, Min=8, Avg=339.94, 50=303, 90=552, 99=1040, 99.9=4319, 99.99=7115]
2026-06-30 05:09:17:498 40 sec: 977147 operations; 25163.9 current ops/sec; est completion in 1 second [SCAN-LATENCY-PER-RECORD: Count=238859, Max=3543, Min=1, Avg=8.25, 50=6, 90=12, 99=59, 99.9=123, 99.99=327] [INSERT: Count=12773, Max=4415, Min=8, Avg=54.31, 50=40, 90=77, 99=272, 99.9=1139, 99.99=3959] [SCAN: Count=238857, Max=9695, Min=12, Avg=329.37, 50=300, 90=542, 99=828, 99.9=4077, 99.99=5043]
2026-06-30 05:09:18:499 41 sec: 1000000 operations; 22807.39 current ops/sec; [CLEANUP: Count=8, Max=7927, Min=11, Avg=1004.75, 50=14, 90=7927, 99=7927, 99.9=7927, 99.99=7927] [SCAN-LATENCY-PER-RECORD: Count=21684, Max=569, Min=1, Avg=7.88, 50=6, 90=11, 99=57, 99.9=121, 99.99=305] [INSERT: Count=1156, Max=336, Min=11, Avg=48.22, 50=40, 90=72, 99=240, 99.9=334, 99.99=336] [SCAN: Count=21637, Max=4279, Min=11, Avg=312.51, 50=282, 90=522, 99=770, 99.9=3933, 99.99=4207]
[OVERALL], RunTime(ms), 41002
[OVERALL], Throughput(ops/sec), 24389.054192478416
[TOTAL_GCS_G1_Young_Generation], Count, 415
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 1324
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 3.229110775084142
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 415
[TOTAL_GC_TIME], Time(ms), 1324
[TOTAL_GC_TIME_%], Time(%), 3.229110775084142
[CLEANUP], Operations, 8
[CLEANUP], AverageLatency(us), 1004.75
[CLEANUP], MinLatency(us), 11
[CLEANUP], MaxLatency(us), 7927
[CLEANUP], 50thPercentileLatency(us), 14
[CLEANUP], 95thPercentileLatency(us), 7927
[CLEANUP], 99thPercentileLatency(us), 7927
[SCAN-LATENCY-PER-RECORD], Operations, 949873
[SCAN-LATENCY-PER-RECORD], AverageLatency(us), 8.364487673615315
[SCAN-LATENCY-PER-RECORD], MinLatency(us), 1
[SCAN-LATENCY-PER-RECORD], MaxLatency(us), 3543
[SCAN-LATENCY-PER-RECORD], 50thPercentileLatency(us), 6
[SCAN-LATENCY-PER-RECORD], 95thPercentileLatency(us), 19
[SCAN-LATENCY-PER-RECORD], 99thPercentileLatency(us), 59
[INSERT], Operations, 50127
[INSERT], AverageLatency(us), 55.12578051748559
[INSERT], MinLatency(us), 8
[INSERT], MaxLatency(us), 53791
[INSERT], 50thPercentileLatency(us), 38
[INSERT], 95thPercentileLatency(us), 103
[INSERT], 99thPercentileLatency(us), 265
[INSERT], Return=OK, 50127
[SCAN], Operations, 949873
[SCAN], AverageLatency(us), 335.20140481938114
[SCAN], MinLatency(us), 6
[SCAN], MaxLatency(us), 21071
[SCAN], 50thPercentileLatency(us), 299
[SCAN], 95thPercentileLatency(us), 621
[SCAN], 99thPercentileLatency(us), 999
[SCAN], Return=OK, 949873
```
### 6. Workload F - Read-Modify-Write (50% read, 50% RMW)
```shell
meet@DESKTOP-20D4N8C:~/ycsb/YCSB$ ./bin/ycsb run rocksdb -s -P workloads/workloadf \
  -p rocksdb.dir=/tmp/ycsb-rocksdb-data \
  -p recordcount=1000000 \
  -p operationcount=1000000 \
  -p threadcount=8
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp637ysc7i'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.729 s]
[INFO] Core YCSB .......................................... SUCCESS [  2.752 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.193 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.368 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  1.113 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  6.712 s
[INFO] Finished at: 2026-06-30T05:11:57Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadf -p rocksdb.dir=/tmp/ycsb-rocksdb-data -p recordcount=1000000 -p operationcount=1000000 -p threadcount=8 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadf -p rocksdb.dir=/tmp/ycsb-rocksdb-data -p recordcount=1000000 -p operationcount=1000000 -p threadcount=8 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-7] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /tmp/ycsb-rocksdb-data
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

2026-06-30 05:11:58:189 0 sec: 0 operations; est completion in 0 second
DBWrapper: report latency for each error is false and specific error codes to track for latency are: []
2026-06-30 05:12:07:321 9 sec: 1000000 operations; 109003.71 current ops/sec; [READ: Count=1000000, Max=9191, Min=1, Avg=37.55, 50=31, 90=65, 99=175, 99.9=1403, 99.99=3529] [READ-MODIFY-WRITE: Count=500051, Max=154495, Min=8, Avg=98.28, 50=66, 90=132, 99=634, 99.9=2533, 99.99=8239] [CLEANUP: Count=8, Max=46143, Min=3, Avg=5777.75, 50=13, 90=46143, 99=46143, 99.9=46143, 99.99=46143] [UPDATE: Count=500051, Max=152191, Min=5, Avg=59.02, 50=28, 90=67, 99=510, 99.9=1969, 99.99=8135]
[OVERALL], RunTime(ms), 9174
[OVERALL], Throughput(ops/sec), 109003.70612600828
[TOTAL_GCS_G1_Young_Generation], Count, 59
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 122
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 1.329845214737301
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 59
[TOTAL_GC_TIME], Time(ms), 122
[TOTAL_GC_TIME_%], Time(%), 1.329845214737301
[READ], Operations, 1000000
[READ], AverageLatency(us), 37.545048
[READ], MinLatency(us), 1
[READ], MaxLatency(us), 9191
[READ], 50thPercentileLatency(us), 31
[READ], 95thPercentileLatency(us), 79
[READ], 99thPercentileLatency(us), 175
[READ], Return=OK, 1000000
[READ-MODIFY-WRITE], Operations, 500051
[READ-MODIFY-WRITE], AverageLatency(us), 98.27827561588718
[READ-MODIFY-WRITE], MinLatency(us), 8
[READ-MODIFY-WRITE], MaxLatency(us), 154495
[READ-MODIFY-WRITE], 50thPercentileLatency(us), 66
[READ-MODIFY-WRITE], 95thPercentileLatency(us), 250
[READ-MODIFY-WRITE], 99thPercentileLatency(us), 634
[CLEANUP], Operations, 8
[CLEANUP], AverageLatency(us), 5777.75
[CLEANUP], MinLatency(us), 3
[CLEANUP], MaxLatency(us), 46143
[CLEANUP], 50thPercentileLatency(us), 13
[CLEANUP], 95thPercentileLatency(us), 46143
[CLEANUP], 99thPercentileLatency(us), 46143
[UPDATE], Operations, 500051
[UPDATE], AverageLatency(us), 59.02260369442317
[UPDATE], MinLatency(us), 5
[UPDATE], MaxLatency(us), 152191
[UPDATE], 50thPercentileLatency(us), 28
[UPDATE], 95thPercentileLatency(us), 144
[UPDATE], 99thPercentileLatency(us), 510
[UPDATE], Return=OK, 500051
```
---
---
---
# YCSB 10M
### Workload A (Update heavy)
```shell
meet@DESKTOP-20D4N8C:~/ycsb/YCSB$ #!/bin/bash
set -e

DB_DIR="/tmp/ycsb-rocksdb-data-10m"
RECORDS=10000000
OPS=10000000
THREADS=16

export JAVA_OPTS="-Xmx4g"

# Workload A (Update heavy)
echo "=== Workload A ==="
rm -rf "$DB_DIR"
mkdir -p "$DB_DIR"
./bin/ycsb load rocksdb -s -P workloads/workloada \
  -p rocksdb.dir="$DB_DIR" \
  -p recordcount=$RECORDS \
  -p threadcount=$THREADS
./bin/ycsb run rocksdb -s -P workloads/workloada \
  -p rocksdb.dir="$DB_DIR" \
  -p recordcount=$RECORDS \
  -p operationcount=$OPS \
  -p threadcount=$THREADS
=== Workload A ===
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmplut0y2gb'
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
[INFO] YCSB Root .......................................... SUCCESS [  2.067 s]
[INFO] Core YCSB .......................................... SUCCESS [  3.020 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.221 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.448 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  1.188 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  7.477 s
[INFO] Finished at: 2026-06-30T07:17:10Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloada -p rocksdb.dir=/tmp/ycsb-rocksdb-data-10m -p recordcount=10000000 -p threadcount=16 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloada -p rocksdb.dir=/tmp/ycsb-rocksdb-data-10m -p recordcount=10000000 -p threadcount=16 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-7] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /tmp/ycsb-rocksdb-data-10m
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

2026-06-30 07:17:10:858 0 sec: 0 operations; est completion in 0 second
DBWrapper: report latency for each error is false and specific error codes to track for latency are: []
2026-06-30 07:17:20:820 10 sec: 381128 operations; 38108.99 current ops/sec; est completion in 4 minutes [INSERT: Count=381179, Max=115391, Min=10, Avg=411.93, 50=388, 90=496, 99=608, 99.9=2785, 99.99=48511]
2026-06-30 07:17:30:820 20 sec: 770545 operations; 38941.7 current ops/sec; est completion in 4 minutes [INSERT: Count=389382, Max=98751, Min=11, Avg=408.29, 50=389, 90=498, 99=601, 99.9=1969, 99.99=48095]
[Thread-16] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
[Thread-10] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
[Thread-4] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
[Thread-5] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
[Thread-3] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
[Thread-11] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
[Thread-8] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
[Thread-7] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-15] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-12] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-17] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-13] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
[Thread-2] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-14] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-6] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
[Thread-9] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
2026-06-30 07:17:40:343 29 sec: 1091382 operations; 33690.75 current ops/sec; est completion in 4 minutes [CLEANUP: Count=16, Max=1111039, Min=2, Avg=69410.25, 50=2, 90=6, 99=1111039, 99.9=1111039, 99.99=1111039] [INSERT: Count=320821, Max=88127, Min=7, Avg=416.23, 50=398, 90=511, 99=628, 99.9=1928, 99.99=6379] [INSERT-FAILED: Count=16, Max=15439, Min=6396, Avg=11265.88, 50=11519, 90=14479, 99=15439, 99.9=15439, 99.99=15439]
[OVERALL], RunTime(ms), 29524
[OVERALL], Throughput(ops/sec), 36965.9260262837
[TOTAL_GCS_G1_Young_Generation], Count, 94
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 167
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.5656415119902453
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 94
[TOTAL_GC_TIME], Time(ms), 167
[TOTAL_GC_TIME_%], Time(%), 0.5656415119902453
[CLEANUP], Operations, 16
[CLEANUP], AverageLatency(us), 69410.25
[CLEANUP], MinLatency(us), 2
[CLEANUP], MaxLatency(us), 1111039
[CLEANUP], 50thPercentileLatency(us), 2
[CLEANUP], 95thPercentileLatency(us), 1111039
[CLEANUP], 99thPercentileLatency(us), 1111039
[INSERT], Operations, 1091382
[INSERT], AverageLatency(us), 411.89551779303673
[INSERT], MinLatency(us), 7
[INSERT], MaxLatency(us), 115391
[INSERT], 50thPercentileLatency(us), 391
[INSERT], 95thPercentileLatency(us), 531
[INSERT], 99thPercentileLatency(us), 613
[INSERT], Return=OK, 1091382
[INSERT], Return=ERROR, 16
[INSERT-FAILED], Operations, 16
[INSERT-FAILED], AverageLatency(us), 11265.875
[INSERT-FAILED], MinLatency(us), 6396
[INSERT-FAILED], MaxLatency(us), 15439
[INSERT-FAILED], 50thPercentileLatency(us), 11519
[INSERT-FAILED], 95thPercentileLatency(us), 15439
[INSERT-FAILED], 99thPercentileLatency(us), 15439
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmps_ftbvds'
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
[INFO] YCSB Root .......................................... SUCCESS [  2.124 s]
[INFO] Core YCSB .......................................... SUCCESS [  2.932 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.229 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.447 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  1.277 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  7.538 s
[INFO] Finished at: 2026-06-30T07:17:49Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloada -p rocksdb.dir=/tmp/ycsb-rocksdb-data-10m -p recordcount=10000000 -p operationcount=10000000 -p threadcount=16 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloada -p rocksdb.dir=/tmp/ycsb-rocksdb-data-10m -p recordcount=10000000 -p operationcount=10000000 -p threadcount=16 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-7] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /tmp/ycsb-rocksdb-data-10m
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

2026-06-30 07:17:49:789 0 sec: 0 operations; est completion in 0 second
DBWrapper: report latency for each error is false and specific error codes to track for latency are: []
2026-06-30 07:17:59:747 10 sec: 878035 operations; 87785.94 current ops/sec; est completion in 1 minute [UPDATE-FAILED: Count=398263, Max=27423, Min=2, Avg=116.75, 50=69, 90=100, 99=1700, 99.9=6535, 99.99=11799] [READ: Count=40667, Max=12975, Min=2, Avg=76.07, 50=47, 90=86, 99=820, 99.9=4919, 99.99=9791] [READ-FAILED: Count=398975, Max=26719, Min=2, Avg=116.01, 50=69, 90=99, 99=1698, 99.9=6475, 99.99=11855] [UPDATE: Count=41303, Max=129919, Min=11, Avg=971.29, 50=102, 90=3023, 99=7083, 99.9=12055, 99.99=113087]
2026-06-30 07:18:09:751 20 sec: 1924902 operations; 104644.84 current ops/sec; est completion in 1 minute [UPDATE-FAILED: Count=474452, Max=26207, Min=4, Avg=118.69, 50=71, 90=100, 99=1687, 99.9=6683, 99.99=11415] [READ: Count=48395, Max=13367, Min=3, Avg=70.85, 50=40, 90=84, 99=670, 99.9=5175, 99.99=10879] [READ-FAILED: Count=475003, Max=21103, Min=4, Avg=118.06, 50=71, 90=100, 99=1694, 99.9=6583, 99.99=11423] [UPDATE: Count=48567, Max=19503, Min=12, Avg=853.36, 50=100, 90=2767, 99=6863, 99.9=11135, 99.99=16159]
2026-06-30 07:18:19:751 30 sec: 3078557 operations; 115377.04 current ops/sec; est completion in 1 minute [UPDATE-FAILED: Count=522792, Max=18223, Min=4, Avg=106.77, 50=71, 90=94, 99=1223, 99.9=6019, 99.99=10863] [READ: Count=53480, Max=16399, Min=2, Avg=62.49, 50=36, 90=82, 99=371, 99.9=5047, 99.99=9207] [READ-FAILED: Count=523404, Max=19695, Min=4, Avg=106.88, 50=71, 90=94, 99=1246, 99.9=5863, 99.99=11055] [UPDATE: Count=53652, Max=100351, Min=10, Avg=779.86, 50=91, 90=2575, 99=6595, 99.9=10679, 99.99=96575]
2026-06-30 07:18:29:754 40 sec: 4196276 operations; 111727.21 current ops/sec; est completion in 56 seconds [UPDATE-FAILED: Count=507131, Max=17487, Min=5, Avg=110.21, 50=75, 90=98, 99=1267, 99.9=5791, 99.99=10231] [READ: Count=52039, Max=17951, Min=2, Avg=63.12, 50=33, 90=85, 99=414, 99.9=4559, 99.99=10615] [READ-FAILED: Count=506560, Max=18575, Min=5, Avg=110.58, 50=75, 90=98, 99=1270, 99.9=5847, 99.99=10039] [UPDATE: Count=52015, Max=18639, Min=11, Avg=809.21, 50=98, 90=2743, 99=6599, 99.9=10503, 99.99=13911]
2026-06-30 07:18:39:746 50 sec: 5234275 operations; 103883.01 current ops/sec; est completion in 46 seconds [UPDATE-FAILED: Count=472007, Max=21935, Min=5, Avg=121.31, 50=78, 90=106, 99=1575, 99.9=6163, 99.99=11271] [READ: Count=47847, Max=10743, Min=2, Avg=68.01, 50=31, 90=88, 99=581, 99.9=4983, 99.99=9175] [READ-FAILED: Count=469932, Max=24431, Min=3, Avg=123.12, 50=78, 90=106, 99=1656, 99.9=6431, 99.99=11215] [UPDATE: Count=47812, Max=89791, Min=12, Avg=809.38, 50=96, 90=2703, 99=6711, 99.9=11199, 99.99=89151]
2026-06-30 07:18:49:746 60 sec: 6244757 operations; 101048.2 current ops/sec; est completion in 37 seconds [UPDATE-FAILED: Count=458692, Max=29455, Min=5, Avg=131.86, 50=81, 90=110, 99=1843, 99.9=6955, 99.99=12375] [READ: Count=46782, Max=22735, Min=2, Avg=72.03, 50=30, 90=91, 99=691, 99.9=5335, 99.99=11783] [READ-FAILED: Count=458477, Max=34783, Min=5, Avg=133.3, 50=81, 90=110, 99=1930, 99.9=6923, 99.99=12559] [UPDATE: Count=46955, Max=17311, Min=11, Avg=687.53, 50=90, 90=2451, 99=6551, 99.9=10519, 99.99=13991]
2026-06-30 07:18:59:748 70 sec: 7218409 operations; 97345.73 current ops/sec; est completion in 27 seconds [UPDATE-FAILED: Count=441422, Max=31327, Min=3, Avg=134.59, 50=84, 90=119, 99=1836, 99.9=6783, 99.99=12159] [READ: Count=45353, Max=11775, Min=2, Avg=72.14, 50=30, 90=95, 99=652, 99.9=5291, 99.99=9471] [READ-FAILED: Count=441303, Max=21951, Min=5, Avg=134.74, 50=84, 90=119, 99=1887, 99.9=6743, 99.99=11519] [UPDATE: Count=45310, Max=112575, Min=9, Avg=776.28, 50=98, 90=2619, 99=6879, 99.9=11223, 99.99=108927]
2026-06-30 07:19:09:746 80 sec: 8208283 operations; 99007.2 current ops/sec; est completion in 18 seconds [UPDATE-FAILED: Count=448912, Max=22527, Min=6, Avg=136.42, 50=88, 90=116, 99=1861, 99.9=6983, 99.99=11719] [READ: Count=45878, Max=11167, Min=2, Avg=69.47, 50=30, 90=96, 99=539, 99.9=4859, 99.99=9263] [READ-FAILED: Count=448997, Max=25775, Min=6, Avg=137.48, 50=88, 90=116, 99=1896, 99.9=7103, 99.99=11583] [UPDATE: Count=46042, Max=17487, Min=12, Avg=677.36, 50=92, 90=2463, 99=6607, 99.9=10431, 99.99=13903]
2026-06-30 07:19:19:746 90 sec: 9150835 operations; 94255.2 current ops/sec; est completion in 9 second [UPDATE-FAILED: Count=427490, Max=26687, Min=6, Avg=139.56, 50=90, 90=119, 99=1886, 99.9=7011, 99.99=12343] [READ: Count=43860, Max=11607, Min=2, Avg=71.85, 50=29, 90=99, 99=598, 99.9=5631, 99.99=10191] [READ-FAILED: Count=427645, Max=24447, Min=6, Avg=139.8, 50=90, 90=120, 99=1884, 99.9=6967, 99.99=12079] [UPDATE: Count=43721, Max=20415, Min=12, Avg=800.69, 50=102, 90=2897, 99=6999, 99.9=11095, 99.99=16375]
2026-06-30 07:19:29:746 100 sec: 10000000 operations; 84916.5 current ops/sec; [UPDATE-FAILED: Count=385112, Max=24607, Min=6, Avg=149.19, 50=93, 90=125, 99=2149, 99.9=7527, 99.99=12575] [READ: Count=39090, Max=14839, Min=2, Avg=76.47, 50=31, 90=102, 99=692, 99.9=5719, 99.99=10967] [CLEANUP: Count=15, Max=12, Min=1, Avg=7.87, 50=8, 90=11, 99=12, 99.9=12, 99.99=12] [READ-FAILED: Count=385446, Max=21647, Min=6, Avg=147.34, 50=93, 90=125, 99=2119, 99.9=7151, 99.99=12023] [UPDATE: Count=39217, Max=90175, Min=10, Avg=670.81, 50=91, 90=2313, 99=6379, 99.9=11599, 99.99=88575]
2026-06-30 07:19:30:129 100 sec: 10000000 operations; 0 current ops/sec; [UPDATE-FAILED: Count=0, Max=0, Min=0, Avg=0, 50=0, 90=0, 99=0, 99.9=0, 99.99=0] [READ: Count=0, Max=0, Min=0, Avg=0, 50=0, 90=0, 99=0, 99.9=0, 99.99=0] [CLEANUP: Count=1, Max=871423, Min=870912, Avg=871168, 50=871423, 90=871423, 99=871423, 99.9=871423, 99.99=871423] [READ-FAILED: Count=0, Max=0, Min=0, Avg=0, 50=0, 90=0, 99=0, 99.9=0, 99.99=0] [UPDATE: Count=0, Max=0, Min=0, Avg=0, 50=0, 90=0, 99=0, 99.9=0, 99.99=0]
[OVERALL], RunTime(ms), 100383
[OVERALL], Throughput(ops/sec), 99618.46129324686
[TOTAL_GCS_G1_Young_Generation], Count, 125
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 237
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.23609575326499505
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 125
[TOTAL_GC_TIME], Time(ms), 237
[TOTAL_GC_TIME_%], Time(%), 0.23609575326499505
[UPDATE-FAILED], Operations, 4536273
[UPDATE-FAILED], AverageLatency(us), 125.659595002329
[UPDATE-FAILED], MinLatency(us), 2
[UPDATE-FAILED], MaxLatency(us), 31327
[UPDATE-FAILED], 50thPercentileLatency(us), 79
[UPDATE-FAILED], 95thPercentileLatency(us), 144
[UPDATE-FAILED], 99thPercentileLatency(us), 1684
[READ], Operations, 463391
[READ], AverageLatency(us), 69.8605108860552
[READ], MinLatency(us), 2
[READ], MaxLatency(us), 22735
[READ], 50thPercentileLatency(us), 34
[READ], 95thPercentileLatency(us), 107
[READ], 99thPercentileLatency(us), 587
[READ], Return=OK, 463391
[READ], Return=NOT_FOUND, 4535742
[CLEANUP], Operations, 16
[CLEANUP], AverageLatency(us), 54455.375
[CLEANUP], MinLatency(us), 1
[CLEANUP], MaxLatency(us), 871423
[CLEANUP], 50thPercentileLatency(us), 8
[CLEANUP], 95thPercentileLatency(us), 871423
[CLEANUP], 99thPercentileLatency(us), 871423
[READ-FAILED], Operations, 4535742
[READ-FAILED], AverageLatency(us), 125.9020894486503
[READ-FAILED], MinLatency(us), 2
[READ-FAILED], MaxLatency(us), 34783
[READ-FAILED], 50thPercentileLatency(us), 79
[READ-FAILED], 95thPercentileLatency(us), 145
[READ-FAILED], 99thPercentileLatency(us), 1704
[UPDATE], Operations, 464594
[UPDATE], AverageLatency(us), 783.8021713582182
[UPDATE], MinLatency(us), 9
[UPDATE], MaxLatency(us), 129919
[UPDATE], 50thPercentileLatency(us), 96
[UPDATE], 95thPercentileLatency(us), 3911
[UPDATE], 99thPercentileLatency(us), 6735
[UPDATE], Return=OK, 464594
[UPDATE], Return=NOT_FOUND, 4536273
```
---
### 2. Workload B (Read heavy)
```shell
meet@DESKTOP-20D4N8C:~/ycsb/YCSB$ # Workload B (Read heavy)
echo "=== Workload B ==="
rm -rf "$DB_DIR"
mkdir -p "$DB_DIR"
./bin/ycsb load rocksdb -s -P workloads/workloadb \
  -p rocksdb.dir="$DB_DIR" \
  -p recordcount=$RECORDS \
  -p threadcount=$THREADS
./bin/ycsb run rocksdb -s -P workloads/workloadb \
  -p rocksdb.dir="$DB_DIR" \
  -p recordcount=$RECORDS \
  -p operationcount=$OPS \
  -p threadcount=$THREADS
=== Workload B ===
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmp2vt491kf'
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
[INFO] YCSB Root .......................................... SUCCESS [  2.424 s]
[INFO] Core YCSB .......................................... SUCCESS [  3.290 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.163 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.432 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  1.234 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  8.090 s
[INFO] Finished at: 2026-06-30T07:22:55Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadb -p rocksdb.dir=/tmp/ycsb-rocksdb-data-10m -p recordcount=10000000 -p threadcount=16 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadb -p rocksdb.dir=/tmp/ycsb-rocksdb-data-10m -p recordcount=10000000 -p threadcount=16 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-7] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /tmp/ycsb-rocksdb-data-10m
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

2026-06-30 07:22:56:159 0 sec: 0 operations; est completion in 0 second
DBWrapper: report latency for each error is false and specific error codes to track for latency are: []
2026-06-30 07:23:06:115 10 sec: 389072 operations; 38907.2 current ops/sec; est completion in 4 minutes [INSERT: Count=389108, Max=104511, Min=16, Avg=403.62, 50=382, 90=490, 99=608, 99.9=2129, 99.99=36863]
2026-06-30 07:23:16:115 20 sec: 789181 operations; 40010.9 current ops/sec; est completion in 3 minutes [INSERT: Count=400088, Max=79615, Min=9, Avg=397.46, 50=383, 90=488, 99=562, 99.9=1901, 99.99=31359]
[Thread-5] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
[Thread-13] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
[Thread-4] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
[Thread-9] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-6] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-16] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-2] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-17] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
[Thread-7] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-14] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-11] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-12] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-10] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
[Thread-15] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-8] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
[Thread-3] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
2026-06-30 07:23:25:220 29 sec: 1091386 operations; 33191.1 current ops/sec; est completion in 3 minutes [CLEANUP: Count=16, Max=1092607, Min=1, Avg=68258.44, 50=2, 90=7, 99=1092607, 99.9=1092607, 99.99=1092607] [INSERT: Count=302190, Max=109631, Min=16, Avg=420.79, 50=400, 90=514, 99=638, 99.9=1968, 99.99=101823] [INSERT-FAILED: Count=16, Max=16559, Min=6008, Avg=10885.25, 50=10583, 90=15663, 99=16559, 99.9=16559, 99.99=16559]
[OVERALL], RunTime(ms), 29106
[OVERALL], Throughput(ops/sec), 37496.94221122793
[TOTAL_GCS_G1_Young_Generation], Count, 94
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 160
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.5497148354291211
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 94
[TOTAL_GC_TIME], Time(ms), 160
[TOTAL_GC_TIME_%], Time(%), 0.5497148354291211
[CLEANUP], Operations, 16
[CLEANUP], AverageLatency(us), 68258.4375
[CLEANUP], MinLatency(us), 1
[CLEANUP], MaxLatency(us), 1092607
[CLEANUP], 50thPercentileLatency(us), 2
[CLEANUP], 95thPercentileLatency(us), 1092607
[CLEANUP], 99thPercentileLatency(us), 1092607
[INSERT], Operations, 1091386
[INSERT], AverageLatency(us), 406.11743049663454
[INSERT], MinLatency(us), 9
[INSERT], MaxLatency(us), 109631
[INSERT], 50thPercentileLatency(us), 387
[INSERT], 95thPercentileLatency(us), 524
[INSERT], 99thPercentileLatency(us), 602
[INSERT], Return=OK, 1091386
[INSERT], Return=ERROR, 16
[INSERT-FAILED], Operations, 16
[INSERT-FAILED], AverageLatency(us), 10885.25
[INSERT-FAILED], MinLatency(us), 6008
[INSERT-FAILED], MaxLatency(us), 16559
[INSERT-FAILED], 50thPercentileLatency(us), 10583
[INSERT-FAILED], 95thPercentileLatency(us), 16559
[INSERT-FAILED], 99thPercentileLatency(us), 16559
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpdbloem45'
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
[INFO] YCSB Root .......................................... SUCCESS [  2.202 s]
[INFO] Core YCSB .......................................... SUCCESS [  2.864 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.172 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.425 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  1.237 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  7.438 s
[INFO] Finished at: 2026-06-30T07:23:34Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadb -p rocksdb.dir=/tmp/ycsb-rocksdb-data-10m -p recordcount=10000000 -p operationcount=10000000 -p threadcount=16 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadb -p rocksdb.dir=/tmp/ycsb-rocksdb-data-10m -p recordcount=10000000 -p operationcount=10000000 -p threadcount=16 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-7] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /tmp/ycsb-rocksdb-data-10m
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

2026-06-30 07:23:34:475 0 sec: 0 operations; est completion in 0 second
DBWrapper: report latency for each error is false and specific error codes to track for latency are: []
2026-06-30 07:23:44:435 10 sec: 982318 operations; 98202.34 current ops/sec; est completion in 1 minute [READ: Count=86898, Max=21871, Min=2, Avg=105.53, 50=53, 90=87, 99=1807, 99.9=8647, 99.99=15119] [UPDATE-FAILED: Count=44695, Max=19391, Min=7, Avg=134.19, 50=68, 90=98, 99=2555, 99.9=8391, 99.99=12135] [READ-FAILED: Count=850097, Max=31295, Min=1, Avg=139.62, 50=67, 90=98, 99=2827, 99.9=9063, 99.99=14471] [UPDATE: Count=4468, Max=136319, Min=19, Avg=598.41, 50=109, 90=238, 99=7807, 99.9=89855, 99.99=136319]
2026-06-30 07:23:54:432 20 sec: 2142381 operations; 116029.51 current ops/sec; est completion in 1 minute [READ: Count=102191, Max=19119, Min=2, Avg=97.71, 50=49, 90=84, 99=1553, 99.9=8147, 99.99=13047] [UPDATE-FAILED: Count=52504, Max=21263, Min=7, Avg=142.37, 50=67, 90=97, 99=2725, 99.9=9415, 99.99=15495] [READ-FAILED: Count=997782, Max=32111, Min=2, Avg=137.61, 50=67, 90=97, 99=2569, 99.9=8727, 99.99=14359] [UPDATE: Count=5270, Max=18591, Min=18, Avg=347.55, 50=102, 90=237, 99=6463, 99.9=12287, 99.99=18591]
2026-06-30 07:24:04:432 30 sec: 3528806 operations; 138642.5 current ops/sec; est completion in 56 seconds [READ: Count=122165, Max=27487, Min=2, Avg=78.09, 50=44, 90=77, 99=837, 99.9=6535, 99.99=11655] [UPDATE-FAILED: Count=62694, Max=17503, Min=2, Avg=116.88, 50=65, 90=87, 99=1860, 99.9=7711, 99.99=12351] [READ-FAILED: Count=1194063, Max=29583, Min=4, Avg=115.36, 50=65, 90=87, 99=1784, 99.9=7471, 99.99=12543] [UPDATE: Count=6489, Max=15135, Min=15, Avg=329.74, 50=93, 90=213, 99=6407, 99.9=10087, 99.99=15135]
2026-06-30 07:24:14:432 40 sec: 4881465 operations; 135265.9 current ops/sec; est completion in 42 seconds [READ: Count=119477, Max=23215, Min=2, Avg=79.24, 50=43, 90=78, 99=876, 99.9=6659, 99.99=11807] [UPDATE-FAILED: Count=61134, Max=20719, Min=3, Avg=121.92, 50=66, 90=90, 99=2038, 99.9=7931, 99.99=14071] [READ-FAILED: Count=1165819, Max=30351, Min=3, Avg=118.6, 50=66, 90=90, 99=1885, 99.9=7623, 99.99=13007] [UPDATE: Count=6191, Max=15983, Min=15, Avg=293.06, 50=85, 90=160, 99=6719, 99.9=12879, 99.99=15983]
2026-06-30 07:24:24:437 50 sec: 6235856 operations; 135439.1 current ops/sec; est completion in 31 seconds [READ: Count=119867, Max=21167, Min=2, Avg=75.02, 50=43, 90=77, 99=760, 99.9=6167, 99.99=12063] [UPDATE-FAILED: Count=61250, Max=24959, Min=5, Avg=117.91, 50=66, 90=89, 99=1849, 99.9=7615, 99.99=13319] [READ-FAILED: Count=1167455, Max=33311, Min=4, Avg=118.86, 50=66, 90=89, 99=1886, 99.9=7711, 99.99=13559] [UPDATE: Count=6228, Max=15447, Min=16, Avg=342.91, 50=86, 90=184, 99=7007, 99.9=11383, 99.99=15447]
2026-06-30 07:24:34:434 60 sec: 7610956 operations; 137496.25 current ops/sec; est completion in 19 seconds [READ: Count=121597, Max=23567, Min=2, Avg=76.83, 50=42, 90=77, 99=792, 99.9=6615, 99.99=11271] [UPDATE-FAILED: Count=62147, Max=21727, Min=5, Avg=117.03, 50=66, 90=89, 99=1736, 99.9=7555, 99.99=13759] [READ-FAILED: Count=1184521, Max=26671, Min=4, Avg=116.72, 50=66, 90=88, 99=1810, 99.9=7575, 99.99=12559] [UPDATE: Count=6397, Max=14135, Min=16, Avg=306.32, 50=92, 90=208, 99=5827, 99.9=10591, 99.99=14135]
2026-06-30 07:24:44:442 70 sec: 8993619 operations; 138141.97 current ops/sec; est completion in 8 second [READ: Count=122404, Max=17311, Min=2, Avg=74.18, 50=42, 90=77, 99=739, 99.9=6599, 99.99=10919] [UPDATE-FAILED: Count=62275, Max=15831, Min=6, Avg=112.65, 50=66, 90=88, 99=1616, 99.9=7123, 99.99=11991] [READ-FAILED: Count=1191905, Max=28207, Min=3, Avg=116.22, 50=66, 90=88, 99=1783, 99.9=7387, 99.99=12567] [UPDATE: Count=6406, Max=13911, Min=20, Avg=376.42, 50=92, 90=233, 99=6899, 99.9=11527, 99.99=13911]
2026-06-30 07:24:52:960 78 sec: 10000000 operations; 118147.57 current ops/sec; [READ: Count=88546, Max=17839, Min=2, Avg=67.28, 50=40, 90=76, 99=476, 99.9=5735, 99.99=12607] [UPDATE-FAILED: Count=45422, Max=18047, Min=5, Avg=104.84, 50=66, 90=87, 99=1358, 99.9=6199, 99.99=12703] [CLEANUP: Count=16, Max=714751, Min=5, Avg=44663.38, 50=8, 90=12, 99=714751, 99.9=714751, 99.99=714751] [READ-FAILED: Count=867026, Max=22975, Min=3, Avg=107.09, 50=66, 90=87, 99=1395, 99.9=6747, 99.99=11855] [UPDATE: Count=4617, Max=13703, Min=10, Avg=271.63, 50=88, 90=175, 99=5439, 99.9=9359, 99.99=13703]
[OVERALL], RunTime(ms), 78528
[OVERALL], Throughput(ops/sec), 127343.11328443358
[TOTAL_GCS_G1_Young_Generation], Count, 72
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 161
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.20502241238793806
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 72
[TOTAL_GC_TIME], Time(ms), 161
[TOTAL_GC_TIME_%], Time(%), 0.20502241238793806
[READ], Operations, 883145
[READ], AverageLatency(us), 80.99992300245147
[READ], MinLatency(us), 2
[READ], MaxLatency(us), 27487
[READ], 50thPercentileLatency(us), 44
[READ], 95thPercentileLatency(us), 96
[READ], 99thPercentileLatency(us), 954
[READ], Return=OK, 883145
[READ], Return=NOT_FOUND, 8618668
[UPDATE-FAILED], Operations, 452121
[UPDATE-FAILED], AverageLatency(us), 120.6016707916686
[UPDATE-FAILED], MinLatency(us), 2
[UPDATE-FAILED], MaxLatency(us), 24959
[UPDATE-FAILED], 50thPercentileLatency(us), 66
[UPDATE-FAILED], 95thPercentileLatency(us), 119
[UPDATE-FAILED], 99thPercentileLatency(us), 1953
[CLEANUP], Operations, 16
[CLEANUP], AverageLatency(us), 44663.375
[CLEANUP], MinLatency(us), 5
[CLEANUP], MaxLatency(us), 714751
[CLEANUP], 50thPercentileLatency(us), 8
[CLEANUP], 95thPercentileLatency(us), 714751
[CLEANUP], 99thPercentileLatency(us), 714751
[READ-FAILED], Operations, 8618668
[READ-FAILED], AverageLatency(us), 120.71439240959276
[READ-FAILED], MinLatency(us), 1
[READ-FAILED], MaxLatency(us), 33311
[READ-FAILED], 50thPercentileLatency(us), 66
[READ-FAILED], 95thPercentileLatency(us), 119
[READ-FAILED], 99thPercentileLatency(us), 1976
[UPDATE], Operations, 46066
[UPDATE], AverageLatency(us), 352.1012677462771
[UPDATE], MinLatency(us), 10
[UPDATE], MaxLatency(us), 136319
[UPDATE], 50thPercentileLatency(us), 92
[UPDATE], 95thPercentileLatency(us), 1309
[UPDATE], 99thPercentileLatency(us), 6543
[UPDATE], Return=OK, 46066
[UPDATE], Return=NOT_FOUND, 452121
```
## Workload C (Read Only)
```shell
meet@DESKTOP-20D4N8C:~/ycsb/YCSB$ # Workload C (Read only)
echo "=== Workload C ==="
rm -rf "$DB_DIR"
mkdir -p "$DB_DIR"
./bin/ycsb load rocksdb -s -P workloads/workloadc \
  -p rocksdb.dir="$DB_DIR" \
  -p recordcount=$RECORDS \
  -p threadcount=$THREADS
./bin/ycsb run rocksdb -s -P workloads/workloadc \
  -p rocksdb.dir="$DB_DIR" \
  -p recordcount=$RECORDS \
  -p operationcount=$OPS \
  -p threadcount=$THREADS
=== Workload C ===
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpcoiundxv'
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
[INFO] YCSB Root .......................................... SUCCESS [  3.236 s]
[INFO] Core YCSB .......................................... SUCCESS [  3.555 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.179 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.417 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  1.191 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  9.091 s
[INFO] Finished at: 2026-06-30T07:28:27Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadc -p rocksdb.dir=/tmp/ycsb-rocksdb-data-10m -p recordcount=10000000 -p threadcount=16 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadc -p rocksdb.dir=/tmp/ycsb-rocksdb-data-10m -p recordcount=10000000 -p threadcount=16 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-7] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /tmp/ycsb-rocksdb-data-10m
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

2026-06-30 07:28:28:052 0 sec: 0 operations; est completion in 0 second
DBWrapper: report latency for each error is false and specific error codes to track for latency are: []
2026-06-30 07:28:38:000 10 sec: 394869 operations; 39486.9 current ops/sec; est completion in 4 minutes [INSERT: Count=394907, Max=102591, Min=17, Avg=397.39, 50=378, 90=481, 99=561, 99.9=2167, 99.99=36767]
2026-06-30 07:28:48:000 20 sec: 792546 operations; 39767.7 current ops/sec; est completion in 3 minutes [INSERT: Count=397657, Max=99391, Min=20, Avg=399.92, 50=383, 90=489, 99=581, 99.9=1908, 99.99=32159]
[Thread-14] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
[Thread-6] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
[Thread-2] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
[Thread-11] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-5] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-16] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-9] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
[Thread-17] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-8] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-12] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-3] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-15] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
[Thread-7] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-13] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-10] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-4] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
2026-06-30 07:28:56:858 28 sec: 1091385 operations; 33732.81 current ops/sec; est completion in 3 minutes [CLEANUP: Count=16, Max=1074175, Min=1, Avg=67105.88, 50=2, 90=5, 99=1074175, 99.9=1074175, 99.99=1074175] [INSERT: Count=298821, Max=121407, Min=13, Avg=413.59, 50=394, 90=505, 99=608, 99.9=1931, 99.99=78207] [INSERT-FAILED: Count=16, Max=14351, Min=3844, Avg=9025.94, 50=9119, 90=13271, 99=14351, 99.9=14351, 99.99=14351]
[OVERALL], RunTime(ms), 28859
[OVERALL], Throughput(ops/sec), 37817.83845594095
[TOTAL_GCS_G1_Young_Generation], Count, 93
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 160
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.5544197650646245
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 93
[TOTAL_GC_TIME], Time(ms), 160
[TOTAL_GC_TIME_%], Time(%), 0.5544197650646245
[CLEANUP], Operations, 16
[CLEANUP], AverageLatency(us), 67105.875
[CLEANUP], MinLatency(us), 1
[CLEANUP], MaxLatency(us), 1074175
[CLEANUP], 50thPercentileLatency(us), 2
[CLEANUP], 95thPercentileLatency(us), 1074175
[CLEANUP], 99thPercentileLatency(us), 1074175
[INSERT], Operations, 1091385
[INSERT], AverageLatency(us), 402.7477700353221
[INSERT], MinLatency(us), 13
[INSERT], MaxLatency(us), 121407
[INSERT], 50thPercentileLatency(us), 384
[INSERT], 95thPercentileLatency(us), 516
[INSERT], 99thPercentileLatency(us), 584
[INSERT], Return=OK, 1091385
[INSERT], Return=ERROR, 16
[INSERT-FAILED], Operations, 16
[INSERT-FAILED], AverageLatency(us), 9025.9375
[INSERT-FAILED], MinLatency(us), 3844
[INSERT-FAILED], MaxLatency(us), 14351
[INSERT-FAILED], 50thPercentileLatency(us), 9119
[INSERT-FAILED], 95thPercentileLatency(us), 14351
[INSERT-FAILED], 99thPercentileLatency(us), 14351
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpfnjsr6xm'
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
[INFO] YCSB Root .......................................... SUCCESS [  1.873 s]
[INFO] Core YCSB .......................................... SUCCESS [  2.919 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.173 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.413 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  1.237 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  7.253 s
[INFO] Finished at: 2026-06-30T07:29:05Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadc -p rocksdb.dir=/tmp/ycsb-rocksdb-data-10m -p recordcount=10000000 -p operationcount=10000000 -p threadcount=16 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadc -p rocksdb.dir=/tmp/ycsb-rocksdb-data-10m -p recordcount=10000000 -p operationcount=10000000 -p threadcount=16 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-7] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /tmp/ycsb-rocksdb-data-10m
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

2026-06-30 07:29:06:071 0 sec: 0 operations; est completion in 0 second
DBWrapper: report latency for each error is false and specific error codes to track for latency are: []
2026-06-30 07:29:16:035 10 sec: 1019817 operations; 101930.73 current ops/sec; est completion in 1 minute [READ: Count=94607, Max=22095, Min=5, Avg=119.05, 50=58, 90=89, 99=2233, 99.9=8159, 99.99=13607] [READ-FAILED: Count=929483, Max=32015, Min=1, Avg=134.4, 50=66, 90=96, 99=2677, 99.9=8391, 99.99=14839]
2026-06-30 07:29:26:029 20 sec: 2338942 operations; 131978.49 current ops/sec; est completion in 1 minute [READ: Count=122064, Max=24831, Min=5, Avg=104.67, 50=55, 90=81, 99=1755, 99.9=7283, 99.99=12495] [READ-FAILED: Count=1194298, Max=29631, Min=1, Avg=120.39, 50=63, 90=87, 99=2113, 99.9=7811, 99.99=12943]
2026-06-30 07:29:36:030 30 sec: 3765168 operations; 142622.6 current ops/sec; est completion in 50 seconds [READ: Count=132270, Max=20063, Min=5, Avg=98.67, 50=54, 90=78, 99=1422, 99.9=6891, 99.99=12551] [READ-FAILED: Count=1293376, Max=31103, Min=1, Avg=111.28, 50=63, 90=84, 99=1744, 99.9=7035, 99.99=12143]
2026-06-30 07:29:46:030 40 sec: 5168176 operations; 140286.77 current ops/sec; est completion in 38 seconds [READ: Count=130243, Max=25759, Min=3, Avg=99.37, 50=54, 90=79, 99=1460, 99.9=6903, 99.99=11759] [READ-FAILED: Count=1272257, Max=28527, Min=4, Avg=113.23, 50=63, 90=86, 99=1839, 99.9=7059, 99.99=12239]
2026-06-30 07:29:56:030 50 sec: 6625567 operations; 145753.68 current ops/sec; est completion in 26 seconds [READ: Count=135514, Max=19327, Min=5, Avg=92.1, 50=53, 90=77, 99=1203, 99.9=6295, 99.99=11639] [READ-FAILED: Count=1321854, Max=25967, Min=1, Avg=109.22, 50=62, 90=82, 99=1685, 99.9=7035, 99.99=12551]
2026-06-30 07:30:06:029 60 sec: 8076445 operations; 145087.8 current ops/sec; est completion in 15 seconds [READ: Count=134215, Max=25487, Min=5, Avg=95.72, 50=54, 90=78, 99=1318, 99.9=6743, 99.99=11295] [READ-FAILED: Count=1316567, Max=26751, Min=1, Avg=109.64, 50=62, 90=83, 99=1700, 99.9=6987, 99.99=11855]
2026-06-30 07:30:16:029 70 sec: 9545023 operations; 146857.8 current ops/sec; est completion in 4 second [READ: Count=136188, Max=17791, Min=4, Avg=95.32, 50=53, 90=77, 99=1274, 99.9=6547, 99.99=11303] [READ-FAILED: Count=1332211, Max=20607, Min=1, Avg=108.09, 50=62, 90=83, 99=1678, 99.9=6739, 99.99=11415]
2026-06-30 07:30:20:374 74 sec: 10000000 operations; 104712.77 current ops/sec; [READ: Count=42280, Max=12655, Min=3, Avg=79.76, 50=51, 90=75, 99=762, 99.9=5179, 99.99=9519] [CLEANUP: Count=16, Max=540671, Min=5, Avg=33789.94, 50=8, 90=116, 99=540671, 99.9=540671, 99.99=540671] [READ-FAILED: Count=412573, Max=22943, Min=3, Avg=88.01, 50=61, 90=80, 99=822, 99.9=5327, 99.99=10927]
[OVERALL], RunTime(ms), 74345
[OVERALL], Throughput(ops/sec), 134508.0368552021
[TOTAL_GCS_G1_Young_Generation], Count, 70
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 150
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.20176205528280317
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 70
[TOTAL_GC_TIME], Time(ms), 150
[TOTAL_GC_TIME_%], Time(%), 0.20176205528280317
[READ], Operations, 927381
[READ], AverageLatency(us), 98.89508519152322
[READ], MinLatency(us), 3
[READ], MaxLatency(us), 25759
[READ], 50thPercentileLatency(us), 54
[READ], 95thPercentileLatency(us), 101
[READ], 99thPercentileLatency(us), 1462
[READ], Return=OK, 927381
[READ], Return=NOT_FOUND, 9072619
[CLEANUP], Operations, 16
[CLEANUP], AverageLatency(us), 33789.9375
[CLEANUP], MinLatency(us), 5
[CLEANUP], MaxLatency(us), 540671
[CLEANUP], 50thPercentileLatency(us), 8
[CLEANUP], 95thPercentileLatency(us), 540671
[CLEANUP], 99thPercentileLatency(us), 540671
[READ-FAILED], Operations, 9072619
[READ-FAILED], AverageLatency(us), 113.05597071804735
[READ-FAILED], MinLatency(us), 1
[READ-FAILED], MaxLatency(us), 32015
[READ-FAILED], 50thPercentileLatency(us), 63
[READ-FAILED], 95thPercentileLatency(us), 111
[READ-FAILED], 99thPercentileLatency(us), 1828
```
---
### 4. Workload D (Read latest)
```shell
meet@DESKTOP-20D4N8C:~/ycsb/YCSB$ # Workload D (Read latest)
echo "=== Workload D ==="
rm -rf "$DB_DIR"
mkdir -p "$DB_DIR"
./bin/ycsb load rocksdb -s -P workloads/workloadd \
  -p rocksdb.dir="$DB_DIR" \
  -p recordcount=$RECORDS \
  -p threadcount=$THREADS
./bin/ycsb run rocksdb -s -P workloads/workloadd \
  -p rocksdb.dir="$DB_DIR" \
  -p recordcount=$RECORDS \
  -p operationcount=$OPS \
  -p threadcount=$THREADS
=== Workload D ===
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpg7t23yz1'
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
[INFO] YCSB Root .......................................... SUCCESS [  2.546 s]
[INFO] Core YCSB .......................................... SUCCESS [  3.614 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.181 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.627 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  1.647 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  9.240 s
[INFO] Finished at: 2026-06-30T08:13:28Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadd -p rocksdb.dir=/tmp/ycsb-rocksdb-data-10m -p recordcount=10000000 -p threadcount=16 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadd -p rocksdb.dir=/tmp/ycsb-rocksdb-data-10m -p recordcount=10000000 -p threadcount=16 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-12] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /tmp/ycsb-rocksdb-data-10m
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

2026-06-30 08:13:28:616 0 sec: 0 operations; est completion in 0 second
DBWrapper: report latency for each error is false and specific error codes to track for latency are: []
2026-06-30 08:13:38:571 10 sec: 378220 operations; 37818.22 current ops/sec; est completion in 4 minutes [INSERT: Count=378260, Max=204159, Min=12, Avg=415.25, 50=389, 90=500, 99=620, 99.9=2123, 99.99=41055]
2026-06-30 08:13:48:571 20 sec: 763515 operations; 38529.5 current ops/sec; est completion in 4 minutes [INSERT: Count=385255, Max=98367, Min=18, Avg=412.58, 50=394, 90=506, 99=621, 99.9=2031, 99.99=35423]
[Thread-2] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
[Thread-15] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
[Thread-6] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
[Thread-9] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-14] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
[Thread-3] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-17] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-4] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
[Thread-12] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-13] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-8] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-16] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-10] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
[Thread-7] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-11] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
[Thread-5] ERROR site.ycsb.db.rocksdb.RocksDBClient - While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
org.rocksdb.RocksDBException: While appending to file: /tmp/ycsb-rocksdb-data-10m/000046.log: No space left on device
        at org.rocksdb.RocksDB.put(Native Method)
        at org.rocksdb.RocksDB.put(RocksDB.java:648)
        at site.ycsb.db.rocksdb.RocksDBClient.insert(RocksDBClient.java:299)
        at site.ycsb.DBWrapper.insert(DBWrapper.java:227)
        at site.ycsb.workloads.CoreWorkload.doInsert(CoreWorkload.java:632)
        at site.ycsb.ClientThread.run(ClientThread.java:135)
        at java.base/java.lang.Thread.run(Thread.java:1474)
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
Error inserting, not retrying any more. number of attempts: 1Insertion Retry Limit: 0
2026-06-30 08:13:58:448 29 sec: 1090963 operations; 33152.58 current ops/sec; est completion in 4 minutes [CLEANUP: Count=16, Max=1086463, Min=1, Avg=67874.81, 50=2, 90=7, 99=1086463, 99.9=1086463, 99.99=1086463] [INSERT: Count=327448, Max=115199, Min=15, Avg=426.63, 50=403, 90=516, 99=631, 99.9=2045, 99.99=74367] [INSERT-FAILED: Count=16, Max=14983, Min=4700, Avg=9856.62, 50=9735, 90=13703, 99=14983, 99.9=14983, 99.99=14983]
[OVERALL], RunTime(ms), 29878
[OVERALL], Throughput(ops/sec), 36513.92328803802
[TOTAL_GCS_G1_Young_Generation], Count, 93
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 166
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.5555927438248879
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 93
[TOTAL_GC_TIME], Time(ms), 166
[TOTAL_GC_TIME_%], Time(%), 0.5555927438248879
[CLEANUP], Operations, 16
[CLEANUP], AverageLatency(us), 67874.8125
[CLEANUP], MinLatency(us), 1
[CLEANUP], MaxLatency(us), 1086463
[CLEANUP], 50thPercentileLatency(us), 2
[CLEANUP], 95thPercentileLatency(us), 1086463
[CLEANUP], 99thPercentileLatency(us), 1086463
[INSERT], Operations, 1090963
[INSERT], AverageLatency(us), 417.72628677599516
[INSERT], MinLatency(us), 12
[INSERT], MaxLatency(us), 204159
[INSERT], 50thPercentileLatency(us), 395
[INSERT], 95thPercentileLatency(us), 538
[INSERT], 99thPercentileLatency(us), 624
[INSERT], Return=OK, 1090963
[INSERT], Return=ERROR, 16
[INSERT-FAILED], Operations, 16
[INSERT-FAILED], AverageLatency(us), 9856.625
[INSERT-FAILED], MinLatency(us), 4700
[INSERT-FAILED], MaxLatency(us), 14983
[INSERT-FAILED], 50thPercentileLatency(us), 9735
[INSERT-FAILED], 95thPercentileLatency(us), 14983
[INSERT-FAILED], 99thPercentileLatency(us), 14983
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpetumq5k8'
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
[INFO] YCSB Root .......................................... SUCCESS [  2.543 s]
[INFO] Core YCSB .......................................... SUCCESS [  3.231 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.216 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.529 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  1.444 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  8.691 s
[INFO] Finished at: 2026-06-30T08:14:08Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadd -p rocksdb.dir=/tmp/ycsb-rocksdb-data-10m -p recordcount=10000000 -p operationcount=10000000 -p threadcount=16 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadd -p rocksdb.dir=/tmp/ycsb-rocksdb-data-10m -p recordcount=10000000 -p operationcount=10000000 -p threadcount=16 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-7] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /tmp/ycsb-rocksdb-data-10m
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

2026-06-30 08:14:08:984 0 sec: 0 operations; est completion in 0 second
DBWrapper: report latency for each error is false and specific error codes to track for latency are: []
2026-06-30 08:14:18:944 10 sec: 1349587 operations; 134958.7 current ops/sec; est completion in 1 minute [READ: Count=812865, Max=13583, Min=1, Avg=10.29, 50=6, 90=11, 99=71, 99.9=778, 99.99=3821] [READ-FAILED: Count=470515, Max=18799, Min=1, Avg=118.12, 50=76, 90=118, 99=1162, 99.9=4483, 99.99=8831] [INSERT: Count=67445, Max=151295, Min=8, Avg=1047.5, 50=709, 90=2439, 99=5459, 99.9=9879, 99.99=148607]
2026-06-30 08:14:28:944 20 sec: 3280337 operations; 193075 current ops/sec; est completion in 41 seconds [READ: Count=1329185, Max=11599, Min=1, Avg=10.39, 50=6, 90=13, 99=68, 99.9=687, 99.99=3475] [READ-FAILED: Count=504400, Max=18015, Min=3, Avg=116.61, 50=80, 90=120, 99=993, 99.9=4167, 99.99=8903] [INSERT: Count=96185, Max=112639, Min=7, Avg=871.34, 50=564, 90=2055, 99=4863, 99.9=9223, 99.99=111487]
2026-06-30 08:14:38:944 30 sec: 5355385 operations; 207504.8 current ops/sec; est completion in 27 seconds [READ: Count=1504978, Max=11119, Min=1, Avg=10.62, 50=6, 90=17, 99=71, 99.9=649, 99.99=2789] [READ-FAILED: Count=466597, Max=12863, Min=11, Avg=114.13, 50=86, 90=119, 99=838, 99.9=3095, 99.99=6315] [INSERT: Count=103506, Max=160767, Min=7, Avg=844.54, 50=598, 90=1919, 99=4079, 99.9=6899, 99.99=159615]
2026-06-30 08:14:48:944 40 sec: 7300066 operations; 194468.1 current ops/sec; est completion in 15 seconds [READ: Count=1453540, Max=13351, Min=0, Avg=12.6, 50=6, 90=21, 99=84, 99.9=806, 99.99=3895] [READ-FAILED: Count=393499, Max=18207, Min=4, Avg=135.29, 50=94, 90=142, 99=1107, 99.9=4463, 99.99=9687] [INSERT: Count=97728, Max=137215, Min=7, Avg=871.94, 50=582, 90=2027, 99=4771, 99.9=9127, 99.99=134783]
2026-06-30 08:14:58:944 50 sec: 9247168 operations; 194710.2 current ops/sec; est completion in 5 second [READ: Count=1486511, Max=12903, Min=1, Avg=13, 50=6, 90=22, 99=89, 99.9=890, 99.99=3655] [READ-FAILED: Count=363461, Max=24271, Min=18, Avg=142.12, 50=102, 90=151, 99=1137, 99.9=4001, 99.99=8503] [INSERT: Count=96825, Max=85375, Min=7, Avg=885.58, 50=596, 90=2081, 99=4811, 99.9=8679, 99.99=84479]
2026-06-30 08:15:03:059 54 sec: 10000000 operations; 182903.79 current ops/sec; [READ: Count=581451, Max=8791, Min=1, Avg=13.71, 50=6, 90=23, 99=95, 99.9=974, 99.99=3659] [CLEANUP: Count=16, Max=337663, Min=9, Avg=21112.81, 50=15, 90=57, 99=337663, 99.9=337663, 99.99=337663] [READ-FAILED: Count=133904, Max=12167, Min=19, Avg=146.44, 50=105, 90=154, 99=1204, 99.9=3965, 99.99=7671] [INSERT: Count=37405, Max=13423, Min=6, Avg=731.83, 50=394, 90=1898, 99=4295, 99.9=7527, 99.99=10351]
[OVERALL], RunTime(ms), 54116
[OVERALL], Throughput(ops/sec), 184788.2326853426
[TOTAL_GCS_G1_Young_Generation], Count, 217
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 408
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.7539359893561978
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 217
[TOTAL_GC_TIME], Time(ms), 408
[TOTAL_GC_TIME_%], Time(%), 0.7539359893561978
[READ], Operations, 7168530
[READ], AverageLatency(us), 11.684738851619509
[READ], MinLatency(us), 0
[READ], MaxLatency(us), 13583
[READ], 50thPercentileLatency(us), 6
[READ], 95thPercentileLatency(us), 26
[READ], 99thPercentileLatency(us), 78
[READ], Return=OK, 7168530
[READ], Return=NOT_FOUND, 2332376
[CLEANUP], Operations, 16
[CLEANUP], AverageLatency(us), 21112.8125
[CLEANUP], MinLatency(us), 9
[CLEANUP], MaxLatency(us), 337663
[CLEANUP], 50thPercentileLatency(us), 15
[CLEANUP], 95thPercentileLatency(us), 337663
[CLEANUP], 99thPercentileLatency(us), 337663
[READ-FAILED], Operations, 2332376
[READ-FAILED], AverageLatency(us), 125.25760254778818
[READ-FAILED], MinLatency(us), 1
[READ-FAILED], MaxLatency(us), 24271
[READ-FAILED], 50thPercentileLatency(us), 88
[READ-FAILED], 95thPercentileLatency(us), 196
[READ-FAILED], 99thPercentileLatency(us), 1050
[INSERT], Operations, 499094
[INSERT], AverageLatency(us), 882.0126008327088
[INSERT], MinLatency(us), 6
[INSERT], MaxLatency(us), 160767
[INSERT], 50thPercentileLatency(us), 586
[INSERT], 95thPercentileLatency(us), 2745
[INSERT], 99thPercentileLatency(us), 4739
[INSERT], Return=OK, 499094
```
---
### Workload E (Short Ranges)
```shell
meet@DESKTOP-20D4N8C:~/ycsb/YCSB$ ./bin/ycsb run rocksdb -s -P workloads/workloade \
  -p rocksdb.dir="$DB_DIR" \
  -p recordcount=$RECORDS \
  -p operationcount=$OPS \
  -p threadcount=$THREADS \
  -p maxscanlength=100 \
  -p minscanlength=1
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmpdi8ssbqa'
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
[INFO] YCSB Root .......................................... SUCCESS [  2.481 s]
[INFO] Core YCSB .......................................... SUCCESS [  2.974 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.155 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.509 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  1.326 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  8.071 s
[INFO] Finished at: 2026-06-30T08:29:14Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloade -p rocksdb.dir=/home/meet/ycsb-rocksdb-data-10m -p recordcount=10000000 -p operationcount=10000000 -p threadcount=16 -p maxscanlength=100 -p minscanlength=1 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloade -p rocksdb.dir=/home/meet/ycsb-rocksdb-data-10m -p recordcount=10000000 -p operationcount=10000000 -p threadcount=16 -p maxscanlength=100 -p minscanlength=1 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-7] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /home/meet/ycsb-rocksdb-data-10m
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

2026-06-30 08:29:14:789 0 sec: 0 operations; est completion in 0 second
DBWrapper: report latency for each error is false and specific error codes to track for latency are: []
2026-06-30 08:29:24:752 10 sec: 43455 operations; 4345.5 current ops/sec; est completion in 38 minutes [SCAN-LATENCY-PER-RECORD: Count=41327, Max=14479, Min=2, Avg=112.04, 50=58, 90=219, 99=1069, 99.9=3365, 99.99=9175] [INSERT: Count=2128, Max=13407, Min=13, Avg=160.82, 50=82, 90=207, 99=1509, 99.9=8791, 99.99=13407] [SCAN: Count=41334, Max=65855, Min=39, Avg=3342.4, 50=2563, 90=7135, 99=15615, 99.9=40447, 99.99=59711]
2026-06-30 08:29:34:752 20 sec: 106988 operations; 6353.3 current ops/sec; est completion in 30 minutes [SCAN-LATENCY-PER-RECORD: Count=60382, Max=19087, Min=1, Avg=87.71, 50=45, 90=174, 99=818, 99.9=2713, 99.99=7315] [INSERT: Count=3159, Max=32015, Min=12, Avg=150.59, 50=69, 90=159, 99=833, 99.9=16767, 99.99=32015] [SCAN: Count=60422, Max=61951, Min=34, Avg=2636.47, 50=1941, 90=5607, 99=13551, 99.9=31375, 99.99=41183]
2026-06-30 08:29:44:752 30 sec: 160255 operations; 5326.7 current ops/sec; est completion in 30 minutes [SCAN-LATENCY-PER-RECORD: Count=50595, Max=53599, Min=1, Avg=105.25, 50=48, 90=210, 99=1022, 99.9=3515, 99.99=7371] [INSERT: Count=2674, Max=54175, Min=12, Avg=274.69, 50=72, 90=166, 99=6011, 99.9=47359, 99.99=54175] [SCAN: Count=50582, Max=76031, Min=36, Avg=3139.32, 50=2109, 90=6899, 99=20047, 99.9=39903, 99.99=58463]
2026-06-30 08:29:54:752 40 sec: 242523 operations; 8226.8 current ops/sec; est completion in 26 minutes [SCAN-LATENCY-PER-RECORD: Count=78104, Max=24687, Min=1, Avg=63.46, 50=36, 90=126, 99=542, 99.9=1602, 99.99=5731] [INSERT: Count=4170, Max=17391, Min=12, Avg=94.16, 50=62, 90=151, 99=607, 99.9=2125, 99.99=17391] [SCAN: Count=78112, Max=509695, Min=17, Avg=2037.87, 50=1531, 90=4403, 99=8791, 99.9=20223, 99.99=37919]
2026-06-30 08:30:04:769 50 sec: 319815 operations; 7729.2 current ops/sec; est completion in 25 minutes [SCAN-LATENCY-PER-RECORD: Count=73508, Max=24703, Min=1, Avg=67.09, 50=32, 90=137, 99=633, 99.9=1940, 99.99=4975] [INSERT: Count=3814, Max=32623, Min=12, Avg=157.05, 50=64, 90=164, 99=1140, 99.9=14119, 99.99=32623] [SCAN: Count=73480, Max=76415, Min=17, Avg=2165.81, 50=1335, 90=4811, 99=12711, 99.9=29535, 99.99=44767]
2026-06-30 08:30:14:757 60 sec: 409514 operations; 8969.9 current ops/sec; est completion in 23 minutes [SCAN-LATENCY-PER-RECORD: Count=85186, Max=13575, Min=1, Avg=57.69, 50=30, 90=117, 99=508, 99.9=1490, 99.99=4223] [INSERT: Count=4467, Max=24063, Min=10, Avg=114.15, 50=62, 90=159, 99=757, 99.9=3459, 99.99=24063] [SCAN: Count=85172, Max=47743, Min=18, Avg=1863.94, 50=1257, 90=4255, 99=8303, 99.9=18591, 99.99=34591]
2026-06-30 08:30:24:769 70 sec: 491498 operations; 8197.58 current ops/sec; est completion in 22 minutes [SCAN-LATENCY-PER-RECORD: Count=77880, Max=18399, Min=1, Avg=63.83, 50=29, 90=133, 99=587, 99.9=1882, 99.99=6895] [INSERT: Count=4185, Max=10671, Min=12, Avg=119.38, 50=64, 90=149, 99=1018, 99.9=8919, 99.99=10671] [SCAN: Count=77950, Max=48479, Min=16, Avg=2046.25, 50=1233, 90=4739, 99=11039, 99.9=23183, 99.99=33343]
2026-06-30 08:30:34:751 80 sec: 578183 operations; 8669.37 current ops/sec; est completion in 21 minutes [SCAN-LATENCY-PER-RECORD: Count=82218, Max=12887, Min=1, Avg=59.89, 50=29, 90=123, 99=533, 99.9=1810, 99.99=5495] [INSERT: Count=4389, Max=14095, Min=10, Avg=113.76, 50=63, 90=160, 99=883, 99.9=6451, 99.99=14095] [SCAN: Count=82170, Max=76031, Min=22, Avg=1930.48, 50=1219, 90=4427, 99=9703, 99.9=23103, 99.99=33983]
2026-06-30 08:30:44:757 90 sec: 661597 operations; 8341.4 current ops/sec; est completion in 21 minutes [SCAN-LATENCY-PER-RECORD: Count=79291, Max=22223, Min=1, Avg=61.71, 50=28, 90=126, 99=566, 99.9=1798, 99.99=5971] [INSERT: Count=4122, Max=18415, Min=12, Avg=169.85, 50=66, 90=169, 99=2423, 99.9=11471, 99.99=18415] [SCAN: Count=79281, Max=68415, Min=17, Avg=2004.57, 50=1186, 90=4567, 99=10975, 99.9=28847, 99.99=50943]
2026-06-30 08:30:54:767 100 sec: 758901 operations; 9730.4 current ops/sec; est completion in 20 minutes [SCAN-LATENCY-PER-RECORD: Count=92375, Max=6239, Min=1, Avg=52.16, 50=26, 90=109, 99=446, 99.9=1429, 99.99=3291] [INSERT: Count=4954, Max=3201, Min=13, Avg=93.11, 50=61, 90=148, 99=702, 99.9=2077, 99.99=3201] [SCAN: Count=92363, Max=65503, Min=19, Avg=1722.13, 50=1095, 90=4043, 99=7647, 99.9=15671, 99.99=33311]
2026-06-30 08:31:04:757 110 sec: 841025 operations; 8212.4 current ops/sec; est completion in 19 minutes [SCAN-LATENCY-PER-RECORD: Count=78106, Max=23855, Min=1, Avg=62.33, 50=25, 90=128, 99=594, 99.9=2085, 99.99=8139] [INSERT: Count=4026, Max=4291, Min=10, Avg=88.08, 50=63, 90=139, 99=552, 99.9=1926, 99.99=4291] [SCAN: Count=78133, Max=231423, Min=17, Avg=2038.78, 50=1066, 90=4471, 99=13551, 99.9=31695, 99.99=214911]
2026-06-30 08:31:14:751 120 sec: 938341 operations; 9731.6 current ops/sec; est completion in 19 minutes [SCAN-LATENCY-PER-RECORD: Count=92418, Max=6799, Min=1, Avg=52.03, 50=24, 90=109, 99=466, 99.9=1344, 99.99=3889] [INSERT: Count=4869, Max=18655, Min=13, Avg=109.84, 50=64, 90=158, 99=774, 99.9=5523, 99.99=18655] [SCAN: Count=92440, Max=64063, Min=13, Avg=1718.27, 50=1046, 90=4015, 99=8375, 99.9=18367, 99.99=41855]
2026-06-30 08:31:24:768 130 sec: 1031731 operations; 9339 current ops/sec; est completion in 18 minutes [SCAN-LATENCY-PER-RECORD: Count=88845, Max=24399, Min=1, Avg=55.61, 50=24, 90=114, 99=517, 99.9=1697, 99.99=4863] [INSERT: Count=4658, Max=9143, Min=12, Avg=122.06, 50=66, 90=182, 99=1020, 99.9=5139, 99.99=9143] [SCAN: Count=88816, Max=96191, Min=13, Avg=1794.39, 50=1027, 90=4215, 99=9119, 99.9=24831, 99.99=87743]
2026-06-30 08:31:34:759 140 sec: 1129154 operations; 9741.33 current ops/sec; est completion in 18 minutes [SCAN-LATENCY-PER-RECORD: Count=92532, Max=10839, Min=1, Avg=52.12, 50=23, 90=109, 99=468, 99.9=1491, 99.99=5483] [INSERT: Count=4799, Max=13615, Min=11, Avg=138.53, 50=66, 90=172, 99=1337, 99.9=10567, 99.99=13615] [SCAN: Count=92527, Max=115135, Min=16, Avg=1713.61, 50=987, 90=4057, 99=8527, 99.9=20607, 99.99=34815]
2026-06-30 08:31:44:752 150 sec: 1231129 operations; 10198.52 current ops/sec; est completion in 17 minutes [SCAN-LATENCY-PER-RECORD: Count=96856, Max=11719, Min=1, Avg=49.65, 50=22, 90=104, 99=437, 99.9=1446, 99.99=3369] [INSERT: Count=5096, Max=4999, Min=10, Avg=99.84, 50=63, 90=165, 99=707, 99.9=2365, 99.99=4999] [SCAN: Count=96861, Max=72127, Min=13, Avg=1639.79, 50=970, 90=3881, 99=7843, 99.9=17871, 99.99=33759]
2026-06-30 08:31:54:760 160 sec: 1332527 operations; 10139.8 current ops/sec; est completion in 17 minutes [SCAN-LATENCY-PER-RECORD: Count=96509, Max=12095, Min=1, Avg=49.39, 50=23, 90=104, 99=430, 99.9=1316, 99.99=2993] [INSERT: Count=4923, Max=18735, Min=12, Avg=111.48, 50=66, 90=176, 99=877, 99.9=3345, 99.99=18735] [SCAN: Count=96502, Max=102719, Min=22, Avg=1647.93, 50=963, 90=3925, 99=7911, 99.9=16911, 99.99=33695]
2026-06-30 08:32:04:769 170 sec: 1434416 operations; 10188.9 current ops/sec; est completion in 16 minutes [SCAN-LATENCY-PER-RECORD: Count=96777, Max=8999, Min=1, Avg=49.19, 50=22, 90=105, 99=441, 99.9=1466, 99.99=3325] [INSERT: Count=5128, Max=7207, Min=15, Avg=109.05, 50=63, 90=170, 99=952, 99.9=3421, 99.99=7207] [SCAN: Count=96790, Max=64447, Min=25, Avg=1644.36, 50=932, 90=3941, 99=8303, 99.9=19503, 99.99=40383]
2026-06-30 08:32:14:756 180 sec: 1539940 operations; 10552.4 current ops/sec; est completion in 16 minutes [SCAN-LATENCY-PER-RECORD: Count=100316, Max=14567, Min=1, Avg=47.51, 50=21, 90=100, 99=416, 99.9=1421, 99.99=3421] [INSERT: Count=5210, Max=7351, Min=11, Avg=115.03, 50=65, 90=176, 99=951, 99.9=3825, 99.99=7351] [SCAN: Count=100366, Max=67775, Min=22, Avg=1581.48, 50=901, 90=3773, 99=7771, 99.9=16431, 99.99=52063]
2026-06-30 08:32:24:753 190 sec: 1642401 operations; 10246.1 current ops/sec; est completion in 16 minutes [SCAN-LATENCY-PER-RECORD: Count=97401, Max=9455, Min=1, Avg=48.83, 50=21, 90=104, 99=431, 99.9=1431, 99.99=3717] [INSERT: Count=5027, Max=11791, Min=13, Avg=118.54, 50=66, 90=179, 99=1149, 99.9=4403, 99.99=11791] [SCAN: Count=97384, Max=59263, Min=24, Avg=1630.57, 50=902, 90=3959, 99=8543, 99.9=15815, 99.99=29455]
2026-06-30 08:32:34:760 200 sec: 1754087 operations; 11167.48 current ops/sec; est completion in 15 minutes [SCAN-LATENCY-PER-RECORD: Count=106024, Max=12199, Min=1, Avg=45.16, 50=20, 90=96, 99=394, 99.9=1270, 99.99=2927] [INSERT: Count=5672, Max=6731, Min=13, Avg=104.64, 50=64, 90=170, 99=814, 99.9=3691, 99.99=6731] [SCAN: Count=105967, Max=68991, Min=23, Avg=1499.96, 50=866, 90=3593, 99=7179, 99.9=16543, 99.99=30415]
2026-06-30 08:32:44:753 210 sec: 1865708 operations; 11163.22 current ops/sec; est completion in 15 minutes [SCAN-LATENCY-PER-RECORD: Count=106036, Max=12087, Min=1, Avg=45.21, 50=20, 90=96, 99=393, 99.9=1322, 99.99=3229] [INSERT: Count=5563, Max=3939, Min=15, Avg=100.03, 50=64, 90=158, 99=752, 99.9=2701, 99.99=3939] [SCAN: Count=106055, Max=62239, Min=18, Avg=1497.11, 50=854, 90=3587, 99=7355, 99.9=13999, 99.99=33535]
2026-06-30 08:32:54:755 220 sec: 1975692 operations; 10998.4 current ops/sec; est completion in 14 minutes [SCAN-LATENCY-PER-RECORD: Count=104495, Max=12703, Min=1, Avg=45.84, 50=20, 90=97, 99=395, 99.9=1294, 99.99=3673] [INSERT: Count=5504, Max=7511, Min=14, Avg=105.62, 50=65, 90=168, 99=795, 99.9=3269, 99.99=7511] [SCAN: Count=104483, Max=67391, Min=17, Avg=1520.46, 50=871, 90=3673, 99=7435, 99.9=13607, 99.99=30031]
2026-06-30 08:33:04:758 230 sec: 2087794 operations; 11210.2 current ops/sec; est completion in 14 minutes [SCAN-LATENCY-PER-RECORD: Count=106477, Max=16111, Min=1, Avg=44.33, 50=20, 90=94, 99=384, 99.9=1188, 99.99=2899] [INSERT: Count=5601, Max=5043, Min=16, Avg=102.37, 50=63, 90=157, 99=825, 99.9=3319, 99.99=5043] [SCAN: Count=106481, Max=73279, Min=15, Avg=1492.31, 50=871, 90=3563, 99=7247, 99.9=14223, 99.99=32495]
2026-06-30 08:33:14:753 240 sec: 2209087 operations; 12129.3 current ops/sec; est completion in 14 minutes [SCAN-LATENCY-PER-RECORD: Count=115372, Max=11895, Min=1, Avg=40.8, 50=19, 90=87, 99=333, 99.9=1057, 99.99=2269] [INSERT: Count=5935, Max=32047, Min=11, Avg=126.34, 50=65, 90=178, 99=901, 99.9=9559, 99.99=32047] [SCAN: Count=115378, Max=36159, Min=18, Avg=1374.93, 50=825, 90=3281, 99=6263, 99.9=9983, 99.99=21839]
2026-06-30 08:33:24:766 250 sec: 2332765 operations; 12366.56 current ops/sec; est completion in 13 minutes [SCAN-LATENCY-PER-RECORD: Count=117560, Max=5759, Min=1, Avg=40.36, 50=19, 90=86, 99=330, 99.9=1055, 99.99=2633] [INSERT: Count=6153, Max=3469, Min=9, Avg=128.79, 50=64, 90=319, 99=1040, 99.9=3103, 99.99=3469] [SCAN: Count=117543, Max=27567, Min=15, Avg=1350.42, 50=812, 90=3227, 99=6083, 99.9=9191, 99.99=14687]
2026-06-30 08:33:34:760 260 sec: 2457640 operations; 12488.75 current ops/sec; est completion in 13 minutes [SCAN-LATENCY-PER-RECORD: Count=118602, Max=10783, Min=1, Avg=39.72, 50=19, 90=85, 99=323, 99.9=993, 99.99=2333] [INSERT: Count=6236, Max=3855, Min=12, Avg=128.22, 50=63, 90=323, 99=955, 99.9=2491, 99.99=3855] [SCAN: Count=118615, Max=25199, Min=18, Avg=1337.55, 50=817, 90=3179, 99=5811, 99.9=8807, 99.99=17055]
2026-06-30 08:33:44:759 270 sec: 2579277 operations; 12163.7 current ops/sec; est completion in 12 minutes [SCAN-LATENCY-PER-RECORD: Count=115590, Max=5619, Min=1, Avg=40.89, 50=19, 90=87, 99=330, 99.9=1068, 99.99=2205] [INSERT: Count=6081, Max=3891, Min=11, Avg=99.07, 50=61, 90=169, 99=813, 99.9=1916, 99.99=3891] [SCAN: Count=115587, Max=17167, Min=22, Avg=1373.75, 50=829, 90=3299, 99=6131, 99.9=9295, 99.99=13967]
2026-06-30 08:33:54:772 280 sec: 2683992 operations; 10471.5 current ops/sec; est completion in 12 minutes [SCAN-LATENCY-PER-RECORD: Count=99536, Max=5003, Min=1, Avg=47.15, 50=22, 90=101, 99=391, 99.9=1223, 99.99=2599] [INSERT: Count=5292, Max=4807, Min=14, Avg=115.15, 50=70, 90=183, 99=1048, 99.9=2301, 99.99=4807] [SCAN: Count=99543, Max=28895, Min=22, Avg=1597.15, 50=929, 90=3869, 99=7731, 99.9=12335, 99.99=20527]
2026-06-30 08:34:04:755 290 sec: 2803114 operations; 11909.82 current ops/sec; est completion in 12 minutes [SCAN-LATENCY-PER-RECORD: Count=112918, Max=7059, Min=1, Avg=42.41, 50=20, 90=90, 99=357, 99.9=1144, 99.99=2727] [INSERT: Count=6062, Max=4607, Min=12, Avg=101.32, 50=62, 90=162, 99=762, 99.9=2363, 99.99=4607] [SCAN: Count=112924, Max=19423, Min=19, Avg=1404.26, 50=839, 90=3363, 99=6471, 99.9=10199, 99.99=15455]
2026-06-30 08:34:14:759 300 sec: 2927658 operations; 12456.89 current ops/sec; est completion in 12 minutes [SCAN-LATENCY-PER-RECORD: Count=118312, Max=4399, Min=1, Avg=40.29, 50=19, 90=85, 99=331, 99.9=1039, 99.99=2503] [INSERT: Count=6262, Max=3995, Min=14, Avg=92.67, 50=61, 90=145, 99=702, 99.9=2201, 99.99=3995] [SCAN: Count=118297, Max=17599, Min=19, Avg=1343.04, 50=820, 90=3225, 99=5823, 99.9=8343, 99.99=11503]
2026-06-30 08:34:24:753 310 sec: 3051173 operations; 12351.5 current ops/sec; est completion in 11 minutes [SCAN-LATENCY-PER-RECORD: Count=117122, Max=4895, Min=1, Avg=40.16, 50=19, 90=86, 99=327, 99.9=1034, 99.99=1896] [INSERT: Count=6373, Max=3823, Min=12, Avg=94.01, 50=61, 90=153, 99=680, 99.9=2034, 99.99=3823] [SCAN: Count=117127, Max=28175, Min=15, Avg=1355.4, 50=827, 90=3217, 99=5983, 99.9=9447, 99.99=19679]
2026-06-30 08:34:34:755 320 sec: 3175618 operations; 12443.26 current ops/sec; est completion in 11 minutes [SCAN-LATENCY-PER-RECORD: Count=118308, Max=4915, Min=1, Avg=40.01, 50=19, 90=85, 99=321, 99.9=1021, 99.99=2051] [INSERT: Count=6116, Max=4427, Min=10, Avg=98.08, 50=64, 90=171, 99=685, 99.9=1946, 99.99=4427] [SCAN: Count=118309, Max=19727, Min=22, Avg=1342.46, 50=819, 90=3209, 99=5815, 99.9=8903, 99.99=12951]
2026-06-30 08:34:44:753 330 sec: 3299311 operations; 12370.54 current ops/sec; est completion in 11 minutes [SCAN-LATENCY-PER-RECORD: Count=117541, Max=4883, Min=1, Avg=40.19, 50=19, 90=85, 99=330, 99.9=1005, 99.99=2429] [INSERT: Count=6190, Max=5979, Min=13, Avg=94.75, 50=63, 90=155, 99=569, 99.9=1979, 99.99=5979] [SCAN: Count=117549, Max=23711, Min=23, Avg=1351.09, 50=826, 90=3213, 99=5899, 99.9=8927, 99.99=13383]
2026-06-30 08:34:54:751 340 sec: 3418642 operations; 11933.1 current ops/sec; est completion in 10 minutes [SCAN-LATENCY-PER-RECORD: Count=113320, Max=30383, Min=1, Avg=42.12, 50=20, 90=88, 99=342, 99.9=1111, 99.99=2589] [INSERT: Count=5981, Max=3687, Min=15, Avg=94.63, 50=64, 90=158, 99=597, 99.9=1566, 99.99=3687] [SCAN: Count=113309, Max=170879, Min=27, Avg=1401.59, 50=852, 90=3279, 99=6035, 99.9=10063, 99.99=96447]
2026-06-30 08:35:04:754 350 sec: 3543516 operations; 12487.4 current ops/sec; est completion in 10 minutes [SCAN-LATENCY-PER-RECORD: Count=118595, Max=4835, Min=1, Avg=39.9, 50=19, 90=85, 99=322, 99.9=1013, 99.99=1830] [INSERT: Count=6277, Max=3827, Min=15, Avg=93.28, 50=64, 90=155, 99=585, 99.9=1414, 99.99=3827] [SCAN: Count=118601, Max=18095, Min=25, Avg=1339.54, 50=822, 90=3205, 99=5715, 99.9=8495, 99.99=12215]
2026-06-30 08:35:14:775 360 sec: 3669180 operations; 12566.4 current ops/sec; est completion in 10 minutes [SCAN-LATENCY-PER-RECORD: Count=119350, Max=4395, Min=1, Avg=39.79, 50=19, 90=85, 99=326, 99.9=988, 99.99=2075] [INSERT: Count=6311, Max=3645, Min=12, Avg=91.97, 50=63, 90=154, 99=592, 99.9=1724, 99.99=3645] [SCAN: Count=119343, Max=25215, Min=24, Avg=1333.3, 50=816, 90=3179, 99=5731, 99.9=8319, 99.99=14767]
2026-06-30 08:35:24:752 370 sec: 3786974 operations; 11779.4 current ops/sec; est completion in 10 minutes [SCAN-LATENCY-PER-RECORD: Count=111884, Max=6023, Min=1, Avg=42.8, 50=19, 90=92, 99=351, 99.9=1150, 99.99=2481] [INSERT: Count=5913, Max=3491, Min=14, Avg=93.97, 50=66, 90=156, 99=562, 99.9=1967, 99.99=3491] [SCAN: Count=111883, Max=24255, Min=19, Avg=1417.25, 50=840, 90=3425, 99=6139, 99.9=9143, 99.99=13647]
2026-06-30 08:35:34:771 380 sec: 3909455 operations; 12248.1 current ops/sec; est completion in 9 minutes [SCAN-LATENCY-PER-RECORD: Count=116411, Max=10215, Min=1, Avg=41.05, 50=19, 90=86, 99=335, 99.9=1075, 99.99=3651] [INSERT: Count=6087, Max=9095, Min=13, Avg=94.3, 50=65, 90=149, 99=585, 99.9=1873, 99.99=9095] [SCAN: Count=116426, Max=60607, Min=25, Avg=1369.22, 50=836, 90=3243, 99=5995, 99.9=9911, 99.99=22223]
2026-06-30 08:35:44:751 390 sec: 4032790 operations; 12333.5 current ops/sec; est completion in 9 minutes [SCAN-LATENCY-PER-RECORD: Count=117278, Max=4555, Min=1, Avg=40.75, 50=19, 90=86, 99=330, 99.9=1117, 99.99=2329] [INSERT: Count=6035, Max=3891, Min=13, Avg=95.06, 50=65, 90=156, 99=612, 99.9=1402, 99.99=3891] [SCAN: Count=117272, Max=17631, Min=24, Avg=1349.87, 50=837, 90=3199, 99=5783, 99.9=8631, 99.99=12599]
2026-06-30 08:35:54:768 400 sec: 4157346 operations; 12455.6 current ops/sec; est completion in 9 minutes [SCAN-LATENCY-PER-RECORD: Count=118300, Max=4223, Min=1, Avg=40.86, 50=19, 90=86, 99=336, 99.9=1035, 99.99=2235] [INSERT: Count=6265, Max=5411, Min=13, Avg=92.09, 50=64, 90=147, 99=559, 99.9=1617, 99.99=5411] [SCAN: Count=118306, Max=34879, Min=17, Avg=1346.58, 50=835, 90=3191, 99=5779, 99.9=8567, 99.99=16199]
2026-06-30 08:36:04:752 410 sec: 4275594 operations; 11824.8 current ops/sec; est completion in 9 minutes [SCAN-LATENCY-PER-RECORD: Count=112361, Max=4151, Min=1, Avg=42.38, 50=20, 90=90, 99=353, 99.9=1120, 99.99=2243] [INSERT: Count=5871, Max=4295, Min=11, Avg=97.33, 50=68, 90=154, 99=571, 99.9=3183, 99.99=4295] [SCAN: Count=112344, Max=28223, Min=14, Avg=1409.98, 50=855, 90=3401, 99=5979, 99.9=8559, 99.99=13319]
2026-06-30 08:36:14:754 420 sec: 4393515 operations; 11792.1 current ops/sec; est completion in 8 minutes [SCAN-LATENCY-PER-RECORD: Count=112101, Max=5471, Min=1, Avg=42.12, 50=20, 90=89, 99=349, 99.9=1128, 99.99=2393] [INSERT: Count=5819, Max=32367, Min=10, Avg=128.16, 50=66, 90=163, 99=687, 99.9=16959, 99.99=32367] [SCAN: Count=112118, Max=55231, Min=20, Avg=1416.19, 50=852, 90=3343, 99=6295, 99.9=10879, 99.99=37599]
2026-06-30 08:36:24:772 430 sec: 4513627 operations; 12011.2 current ops/sec; est completion in 8 minutes [SCAN-LATENCY-PER-RECORD: Count=114125, Max=4819, Min=1, Avg=42.13, 50=20, 90=89, 99=343, 99.9=1124, 99.99=2349] [INSERT: Count=6035, Max=3537, Min=11, Avg=84.69, 50=58, 90=143, 99=524, 99.9=1498, 99.99=3537] [SCAN: Count=114099, Max=27807, Min=22, Avg=1395.28, 50=881, 90=3297, 99=6011, 99.9=9063, 99.99=13327]
2026-06-30 08:36:34:751 440 sec: 4635039 operations; 12141.2 current ops/sec; est completion in 8 minutes [SCAN-LATENCY-PER-RECORD: Count=115304, Max=5659, Min=1, Avg=41.41, 50=20, 90=87, 99=343, 99.9=1055, 99.99=2191] [INSERT: Count=6064, Max=3817, Min=8, Avg=85.31, 50=60, 90=135, 99=570, 99.9=1444, 99.99=3817] [SCAN: Count=115313, Max=29663, Min=20, Avg=1375.28, 50=878, 90=3229, 99=5703, 99.9=8607, 99.99=16703]
2026-06-30 08:36:44:751 450 sec: 4755902 operations; 12086.3 current ops/sec; est completion in 8 minutes [SCAN-LATENCY-PER-RECORD: Count=115012, Max=13255, Min=1, Avg=41.45, 50=21, 90=86, 99=338, 99.9=1069, 99.99=2021] [INSERT: Count=5857, Max=3515, Min=11, Avg=84.9, 50=61, 90=142, 99=472, 99.9=1348, 99.99=3515] [SCAN: Count=115019, Max=25535, Min=17, Avg=1381.93, 50=892, 90=3231, 99=5723, 99.9=8383, 99.99=14263]
2026-06-30 08:36:54:765 460 sec: 4875501 operations; 11959.9 current ops/sec; est completion in 8 minutes [SCAN-LATENCY-PER-RECORD: Count=113625, Max=6999, Min=1, Avg=42.18, 50=21, 90=89, 99=343, 99.9=1076, 99.99=2381] [INSERT: Count=6025, Max=3835, Min=11, Avg=89.13, 50=62, 90=146, 99=550, 99.9=1643, 99.99=3835] [SCAN: Count=113629, Max=19599, Min=12, Avg=1401.09, 50=888, 90=3295, 99=5987, 99.9=8967, 99.99=12695]
2026-06-30 08:37:04:758 470 sec: 4993374 operations; 11786.12 current ops/sec; est completion in 7 minutes [SCAN-LATENCY-PER-RECORD: Count=111894, Max=5651, Min=1, Avg=42.37, 50=21, 90=89, 99=341, 99.9=1092, 99.99=2379] [INSERT: Count=5921, Max=3313, Min=13, Avg=89.86, 50=63, 90=149, 99=537, 99.9=1865, 99.99=3313] [SCAN: Count=111876, Max=18575, Min=18, Avg=1418.06, 50=901, 90=3331, 99=6031, 99.9=8903, 99.99=12943]
2026-06-30 08:37:14:751 480 sec: 5114255 operations; 12089.31 current ops/sec; est completion in 7 minutes [SCAN-LATENCY-PER-RECORD: Count=114886, Max=3969, Min=1, Avg=41.72, 50=20, 90=87, 99=333, 99.9=1126, 99.99=2495] [INSERT: Count=5994, Max=3695, Min=13, Avg=88.91, 50=61, 90=141, 99=517, 99.9=3117, 99.99=3695] [SCAN: Count=114895, Max=27567, Min=13, Avg=1382.84, 50=878, 90=3259, 99=5763, 99.9=8479, 99.99=15207]
2026-06-30 08:37:24:771 490 sec: 5225232 operations; 11097.7 current ops/sec; est completion in 7 minutes [SCAN-LATENCY-PER-RECORD: Count=105600, Max=17215, Min=1, Avg=45.6, 50=21, 90=95, 99=386, 99.9=1222, 99.99=3211] [INSERT: Count=5390, Max=6843, Min=12, Avg=100.78, 50=66, 90=155, 99=791, 99.9=3017, 99.99=6843] [SCAN: Count=105603, Max=49567, Min=20, Avg=1510.17, 50=912, 90=3499, 99=7267, 99.9=16183, 99.99=31839]
2026-06-30 08:37:34:751 500 sec: 5335091 operations; 10985.9 current ops/sec; est completion in 7 minutes [SCAN-LATENCY-PER-RECORD: Count=104322, Max=7187, Min=1, Avg=46.31, 50=21, 90=98, 99=381, 99.9=1362, 99.99=2535] [INSERT: Count=5524, Max=3237, Min=11, Avg=97.71, 50=67, 90=149, 99=721, 99.9=2517, 99.99=3237] [SCAN: Count=104319, Max=49951, Min=25, Avg=1517.89, 50=915, 90=3631, 99=6839, 99.9=10759, 99.99=18287]
2026-06-30 08:37:44:751 510 sec: 5454337 operations; 11924.6 current ops/sec; est completion in 7 minutes [SCAN-LATENCY-PER-RECORD: Count=113293, Max=5771, Min=1, Avg=42.52, 50=21, 90=90, 99=350, 99.9=1052, 99.99=2093] [INSERT: Count=5958, Max=4899, Min=12, Avg=92.47, 50=64, 90=149, 99=535, 99.9=3079, 99.99=4899] [SCAN: Count=113290, Max=14791, Min=23, Avg=1402.55, 50=885, 90=3311, 99=5963, 99.9=8807, 99.99=11439]
2026-06-30 08:37:54:768 520 sec: 5574017 operations; 11968 current ops/sec; est completion in 6 minutes [SCAN-LATENCY-PER-RECORD: Count=113740, Max=4311, Min=1, Avg=42.41, 50=21, 90=90, 99=341, 99.9=1106, 99.99=2399] [INSERT: Count=5935, Max=3745, Min=12, Avg=93.2, 50=65, 90=148, 99=573, 99.9=3059, 99.99=3745] [SCAN: Count=113735, Max=16751, Min=19, Avg=1399.21, 50=894, 90=3283, 99=5887, 99.9=8599, 99.99=12183]
2026-06-30 08:38:04:787 530 sec: 5689351 operations; 11533.4 current ops/sec; est completion in 6 minutes [SCAN-LATENCY-PER-RECORD: Count=109572, Max=4583, Min=1, Avg=43.81, 50=21, 90=93, 99=364, 99.9=1090, 99.99=2042] [INSERT: Count=5759, Max=3951, Min=15, Avg=99.12, 50=66, 90=156, 99=702, 99.9=1895, 99.99=3951] [SCAN: Count=109576, Max=29087, Min=19, Avg=1451.26, 50=894, 90=3467, 99=6259, 99.9=9375, 99.99=19055]
2026-06-30 08:38:14:751 540 sec: 5806076 operations; 11672.5 current ops/sec; est completion in 6 minutes [SCAN-LATENCY-PER-RECORD: Count=110890, Max=5115, Min=1, Avg=43.25, 50=22, 90=90, 99=349, 99.9=1118, 99.99=2995] [INSERT: Count=5841, Max=4087, Min=13, Avg=99.36, 50=66, 90=160, 99=627, 99.9=2931, 99.99=4087] [SCAN: Count=110911, Max=26991, Min=17, Avg=1429.03, 50=932, 90=3347, 99=5915, 99.9=8495, 99.99=13863]
2026-06-30 08:38:24:752 550 sec: 5921005 operations; 11491.75 current ops/sec; est completion in 6 minutes [SCAN-LATENCY-PER-RECORD: Count=109107, Max=4819, Min=1, Avg=43.64, 50=21, 90=92, 99=363, 99.9=1057, 99.99=2939] [INSERT: Count=5828, Max=4135, Min=14, Avg=95.05, 50=64, 90=160, 99=598, 99.9=2569, 99.99=4135] [SCAN: Count=109089, Max=33343, Min=22, Avg=1455.95, 50=915, 90=3405, 99=6359, 99.9=11199, 99.99=21471]
2026-06-30 08:38:34:758 560 sec: 6041081 operations; 12008.8 current ops/sec; est completion in 6 minutes [SCAN-LATENCY-PER-RECORD: Count=114063, Max=4487, Min=1, Avg=41.79, 50=21, 90=88, 99=340, 99.9=976, 99.99=1863] [INSERT: Count=6009, Max=3373, Min=15, Avg=91.93, 50=61, 90=157, 99=561, 99.9=1590, 99.99=3373] [SCAN: Count=114053, Max=16927, Min=23, Avg=1393.68, 50=894, 90=3273, 99=5819, 99.9=8375, 99.99=11431]
2026-06-30 08:38:44:752 570 sec: 6159633 operations; 11855.2 current ops/sec; est completion in 5 minutes [SCAN-LATENCY-PER-RECORD: Count=112654, Max=4231, Min=1, Avg=42.7, 50=21, 90=90, 99=353, 99.9=1083, 99.99=2141] [INSERT: Count=5897, Max=3705, Min=15, Avg=92.07, 50=66, 90=158, 99=532, 99.9=1045, 99.99=3705] [SCAN: Count=112662, Max=22159, Min=26, Avg=1409.83, 50=892, 90=3343, 99=5783, 99.9=8183, 99.99=16111]
2026-06-30 08:38:54:760 580 sec: 6278525 operations; 11889.2 current ops/sec; est completion in 5 minutes [SCAN-LATENCY-PER-RECORD: Count=112958, Max=6083, Min=1, Avg=42.41, 50=21, 90=89, 99=344, 99.9=1067, 99.99=1956] [INSERT: Count=5946, Max=7367, Min=14, Avg=104.5, 50=68, 90=177, 99=697, 99.9=3177, 99.99=7367] [SCAN: Count=112951, Max=20383, Min=19, Avg=1407.64, 50=890, 90=3303, 99=5995, 99.9=8959, 99.99=13247]
2026-06-30 08:39:04:751 590 sec: 6395032 operations; 11650.7 current ops/sec; est completion in 5 minutes [SCAN-LATENCY-PER-RECORD: Count=110665, Max=5971, Min=1, Avg=43.15, 50=21, 90=91, 99=353, 99.9=1113, 99.99=2649] [INSERT: Count=5829, Max=3597, Min=15, Avg=103.88, 50=68, 90=172, 99=711, 99.9=2851, 99.99=3597] [SCAN: Count=110679, Max=23503, Min=19, Avg=1433.91, 50=903, 90=3367, 99=6247, 99.9=9743, 99.99=15535]
2026-06-30 08:39:14:752 600 sec: 6514754 operations; 11972.2 current ops/sec; est completion in 5 minutes [SCAN-LATENCY-PER-RECORD: Count=113696, Max=4727, Min=1, Avg=41.73, 50=21, 90=88, 99=331, 99.9=981, 99.99=2313] [INSERT: Count=6030, Max=3403, Min=9, Avg=91.89, 50=64, 90=160, 99=536, 99.9=1175, 99.99=3403] [SCAN: Count=113703, Max=20063, Min=26, Avg=1397.72, 50=894, 90=3289, 99=5795, 99.9=8295, 99.99=11391]
2026-06-30 08:39:24:764 610 sec: 6631421 operations; 11666.7 current ops/sec; est completion in 5 minutes [SCAN-LATENCY-PER-RECORD: Count=111055, Max=6379, Min=1, Avg=43.54, 50=21, 90=91, 99=358, 99.9=1164, 99.99=3111] [INSERT: Count=5677, Max=8759, Min=9, Avg=105.94, 50=62, 90=166, 99=805, 99.9=3387, 99.99=8759] [SCAN: Count=111033, Max=26879, Min=29, Avg=1432.6, 50=901, 90=3371, 99=6163, 99.9=9711, 99.99=14823]
2026-06-30 08:39:34:766 620 sec: 6749672 operations; 11825.1 current ops/sec; est completion in 4 minutes [SCAN-LATENCY-PER-RECORD: Count=112200, Max=5599, Min=1, Avg=43.32, 50=21, 90=91, 99=355, 99.9=1085, 99.99=2499] [INSERT: Count=6007, Max=3963, Min=11, Avg=92.54, 50=60, 90=153, 99=608, 99.9=3041, 99.99=3963] [SCAN: Count=112202, Max=20575, Min=30, Avg=1416.33, 50=910, 90=3303, 99=5963, 99.9=8903, 99.99=13359]
2026-06-30 08:39:44:762 630 sec: 6868237 operations; 11855.31 current ops/sec; est completion in 4 minutes [SCAN-LATENCY-PER-RECORD: Count=112554, Max=7271, Min=1, Avg=43.28, 50=21, 90=91, 99=352, 99.9=1125, 99.99=2361] [INSERT: Count=5980, Max=3197, Min=11, Avg=88.92, 50=61, 90=154, 99=551, 99.9=1648, 99.99=3197] [SCAN: Count=112557, Max=30911, Min=25, Avg=1410.35, 50=906, 90=3299, 99=5903, 99.9=8415, 99.99=14583]
2026-06-30 08:39:54:754 640 sec: 6986298 operations; 11804.92 current ops/sec; est completion in 4 minutes [SCAN-LATENCY-PER-RECORD: Count=112131, Max=4443, Min=1, Avg=43.03, 50=21, 90=90, 99=350, 99.9=1104, 99.99=2293] [INSERT: Count=5934, Max=3351, Min=12, Avg=90.77, 50=61, 90=153, 99=611, 99.9=1774, 99.99=3351] [SCAN: Count=112138, Max=21071, Min=25, Avg=1416.62, 50=914, 90=3305, 99=5895, 99.9=8799, 99.99=13767]
2026-06-30 08:40:04:764 650 sec: 7104087 operations; 11778.9 current ops/sec; est completion in 4 minutes [SCAN-LATENCY-PER-RECORD: Count=111820, Max=7251, Min=1, Avg=43.16, 50=21, 90=91, 99=358, 99.9=1084, 99.99=2303] [INSERT: Count=5997, Max=3727, Min=12, Avg=89.55, 50=62, 90=147, 99=588, 99.9=1712, 99.99=3727] [SCAN: Count=111819, Max=24079, Min=29, Avg=1424.77, 50=910, 90=3345, 99=6011, 99.9=9055, 99.99=15663]
2026-06-30 08:40:14:758 660 sec: 7219759 operations; 11569.51 current ops/sec; est completion in 4 minutes [SCAN-LATENCY-PER-RECORD: Count=109847, Max=5475, Min=1, Avg=44.35, 50=22, 90=93, 99=364, 99.9=1084, 99.99=2491] [INSERT: Count=5797, Max=3037, Min=13, Avg=87.11, 50=63, 90=143, 99=562, 99.9=1129, 99.99=3037] [SCAN: Count=109840, Max=20079, Min=20, Avg=1443.84, 50=918, 90=3395, 99=5923, 99.9=8415, 99.99=12583]
2026-06-30 08:40:24:751 670 sec: 7335299 operations; 11554 current ops/sec; est completion in 4 minutes [SCAN-LATENCY-PER-RECORD: Count=109843, Max=5527, Min=1, Avg=43.85, 50=22, 90=91, 99=368, 99.9=1140, 99.99=2183] [INSERT: Count=5696, Max=3571, Min=13, Avg=95.29, 50=67, 90=159, 99=580, 99.9=2081, 99.99=3571] [SCAN: Count=109851, Max=21263, Min=34, Avg=1446.11, 50=936, 90=3369, 99=6159, 99.9=9367, 99.99=14119]
2026-06-30 08:40:34:753 680 sec: 7452534 operations; 11722.33 current ops/sec; est completion in 3 minutes [SCAN-LATENCY-PER-RECORD: Count=111335, Max=4551, Min=1, Avg=43.64, 50=22, 90=92, 99=353, 99.9=1102, 99.99=2335] [INSERT: Count=5909, Max=3381, Min=14, Avg=90.96, 50=63, 90=148, 99=587, 99.9=1366, 99.99=3381] [SCAN: Count=111331, Max=17439, Min=26, Avg=1427.6, 50=909, 90=3353, 99=5915, 99.9=8695, 99.99=12655]
2026-06-30 08:40:44:758 690 sec: 7571293 operations; 11877.09 current ops/sec; est completion in 3 minutes [SCAN-LATENCY-PER-RECORD: Count=112852, Max=5547, Min=1, Avg=43.11, 50=21, 90=91, 99=355, 99.9=1069, 99.99=2133] [INSERT: Count=5897, Max=3007, Min=10, Avg=91.8, 50=61, 90=157, 99=593, 99.9=1667, 99.99=3007] [SCAN: Count=112844, Max=13895, Min=25, Avg=1408.18, 50=898, 90=3311, 99=5827, 99.9=8255, 99.99=10591]
2026-06-30 08:40:54:752 700 sec: 7687761 operations; 11646.8 current ops/sec; est completion in 3 minutes [SCAN-LATENCY-PER-RECORD: Count=110821, Max=4107, Min=1, Avg=44.04, 50=22, 90=92, 99=362, 99.9=1152, 99.99=2353] [INSERT: Count=5647, Max=7627, Min=11, Avg=98.32, 50=64, 90=164, 99=653, 99.9=2779, 99.99=7627] [SCAN: Count=110852, Max=15863, Min=34, Avg=1433.63, 50=912, 90=3359, 99=6027, 99.9=8983, 99.99=12071]
2026-06-30 08:41:04:763 710 sec: 7804468 operations; 11670.7 current ops/sec; est completion in 3 minutes [SCAN-LATENCY-PER-RECORD: Count=111036, Max=5499, Min=1, Avg=43.74, 50=22, 90=92, 99=359, 99.9=1098, 99.99=2179] [INSERT: Count=5769, Max=4223, Min=12, Avg=97.14, 50=63, 90=160, 99=704, 99.9=2723, 99.99=4223] [SCAN: Count=111008, Max=16359, Min=25, Avg=1434.18, 50=907, 90=3367, 99=6047, 99.9=8703, 99.99=11503]
2026-06-30 08:41:14:753 720 sec: 7919195 operations; 11472.7 current ops/sec; est completion in 3 minutes [SCAN-LATENCY-PER-RECORD: Count=108800, Max=7035, Min=1, Avg=45.06, 50=22, 90=95, 99=365, 99.9=1170, 99.99=2423] [INSERT: Count=5829, Max=3835, Min=10, Avg=89.8, 50=62, 90=150, 99=532, 99.9=1982, 99.99=3835] [SCAN: Count=108802, Max=15247, Min=21, Avg=1458.16, 50=929, 90=3451, 99=5955, 99.9=8663, 99.99=13055]
2026-06-30 08:41:24:753 730 sec: 8031170 operations; 11197.5 current ops/sec; est completion in 2 minutes [SCAN-LATENCY-PER-RECORD: Count=106363, Max=6871, Min=1, Avg=45.11, 50=22, 90=95, 99=375, 99.9=1144, 99.99=2595] [INSERT: Count=5627, Max=3671, Min=13, Avg=101.67, 50=67, 90=161, 99=752, 99.9=2679, 99.99=3671] [SCAN: Count=106359, Max=36383, Min=23, Avg=1494.12, 50=936, 90=3487, 99=6667, 99.9=11127, 99.99=20447]
2026-06-30 08:41:34:765 740 sec: 8147800 operations; 11663 current ops/sec; est completion in 2 minutes [SCAN-LATENCY-PER-RECORD: Count=110845, Max=5091, Min=1, Avg=43.94, 50=22, 90=92, 99=364, 99.9=1106, 99.99=2501] [INSERT: Count=5816, Max=3659, Min=10, Avg=98.64, 50=68, 90=170, 99=610, 99.9=1945, 99.99=3659] [SCAN: Count=110861, Max=28191, Min=26, Avg=1436.68, 50=921, 90=3353, 99=6027, 99.9=9335, 99.99=21631]
2026-06-30 08:41:44:754 750 sec: 8263165 operations; 11536.5 current ops/sec; est completion in 2 minutes [SCAN-LATENCY-PER-RECORD: Count=109561, Max=4295, Min=1, Avg=44.07, 50=22, 90=93, 99=356, 99.9=1118, 99.99=2209] [INSERT: Count=5763, Max=3601, Min=12, Avg=95.21, 50=65, 90=158, 99=548, 99.9=2847, 99.99=3601] [SCAN: Count=109555, Max=18767, Min=28, Avg=1447.49, 50=921, 90=3417, 99=5947, 99.9=8775, 99.99=16295]
2026-06-30 08:41:54:752 760 sec: 8380069 operations; 11690.4 current ops/sec; est completion in 2 minutes [SCAN-LATENCY-PER-RECORD: Count=111080, Max=3599, Min=1, Avg=44.17, 50=22, 90=93, 99=361, 99.9=1155, 99.99=2359] [INSERT: Count=5825, Max=2569, Min=14, Avg=95.69, 50=67, 90=166, 99=567, 99.9=1667, 99.99=2569] [SCAN: Count=111080, Max=19711, Min=33, Avg=1430.2, 50=917, 90=3353, 99=5987, 99.9=8807, 99.99=11639]
2026-06-30 08:42:04:771 770 sec: 8495865 operations; 11579.6 current ops/sec; est completion in 2 minutes [SCAN-LATENCY-PER-RECORD: Count=110019, Max=6135, Min=1, Avg=43.76, 50=22, 90=92, 99=349, 99.9=1114, 99.99=2357] [INSERT: Count=5777, Max=3971, Min=13, Avg=100.77, 50=69, 90=172, 99=626, 99.9=1658, 99.99=3971] [SCAN: Count=110008, Max=17087, Min=25, Avg=1446.42, 50=938, 90=3381, 99=6023, 99.9=8855, 99.99=12559]
2026-06-30 08:42:14:768 780 sec: 8612817 operations; 11695.2 current ops/sec; est completion in 2 minutes [SCAN-LATENCY-PER-RECORD: Count=111289, Max=6139, Min=1, Avg=43.56, 50=22, 90=91, 99=355, 99.9=1113, 99.99=2271] [INSERT: Count=5759, Max=3069, Min=15, Avg=94.15, 50=67, 90=152, 99=582, 99.9=2069, 99.99=3069] [SCAN: Count=111294, Max=32191, Min=29, Avg=1429.36, 50=928, 90=3317, 99=5927, 99.9=8927, 99.99=17807]
2026-06-30 08:42:24:751 790 sec: 8726293 operations; 11347.6 current ops/sec; est completion in 1 minute [SCAN-LATENCY-PER-RECORD: Count=107708, Max=19231, Min=1, Avg=45.34, 50=22, 90=95, 99=372, 99.9=1207, 99.99=2543] [INSERT: Count=5702, Max=4699, Min=12, Avg=100.33, 50=67, 90=164, 99=659, 99.9=2699, 99.99=4699] [SCAN: Count=107719, Max=39551, Min=24, Avg=1475.22, 50=931, 90=3483, 99=6135, 99.9=9271, 99.99=31695]
2026-06-30 08:42:34:756 800 sec: 8823922 operations; 9762.9 current ops/sec; est completion in 1 minute [SCAN-LATENCY-PER-RECORD: Count=92674, Max=7795, Min=1, Avg=52.71, 50=25, 90=108, 99=469, 99.9=1551, 99.99=4111] [INSERT: Count=4923, Max=22447, Min=9, Avg=113.85, 50=62, 90=146, 99=678, 99.9=16431, 99.99=22447] [SCAN: Count=92676, Max=68863, Min=28, Avg=1711.15, 50=1056, 90=3861, 99=8167, 99.9=25791, 99.99=41087]
2026-06-30 08:42:44:755 810 sec: 8921553 operations; 9763.1 current ops/sec; est completion in 1 minute [SCAN-LATENCY-PER-RECORD: Count=92880, Max=21967, Min=1, Avg=53.5, 50=27, 90=108, 99=467, 99.9=1526, 99.99=3785] [INSERT: Count=4754, Max=4343, Min=12, Avg=93.26, 50=61, 90=161, 99=641, 99.9=3365, 99.99=4343] [SCAN: Count=92886, Max=222847, Min=19, Avg=1713.9, 50=1147, 90=3887, 99=7571, 99.9=16231, 99.99=29711]
2026-06-30 08:42:54:753 820 sec: 9026894 operations; 10534.1 current ops/sec; est completion in 1 minute [SCAN-LATENCY-PER-RECORD: Count=100108, Max=4655, Min=1, Avg=48.4, 50=23, 90=100, 99=419, 99.9=1364, 99.99=3145] [INSERT: Count=5236, Max=3725, Min=11, Avg=94.41, 50=60, 90=148, 99=644, 99.9=3211, 99.99=3725] [SCAN: Count=100131, Max=62111, Min=14, Avg=1586.19, 50=987, 90=3723, 99=7167, 99.9=15151, 99.99=24703]
2026-06-30 08:43:04:756 830 sec: 9130744 operations; 10385 current ops/sec; est completion in 1 minute [SCAN-LATENCY-PER-RECORD: Count=98653, Max=9615, Min=1, Avg=48.71, 50=23, 90=102, 99=413, 99.9=1356, 99.99=3451] [INSERT: Count=5187, Max=3811, Min=12, Avg=97.82, 50=63, 90=162, 99=764, 99.9=2245, 99.99=3811] [SCAN: Count=98615, Max=78975, Min=18, Avg=1612.42, 50=985, 90=3783, 99=7587, 99.9=15855, 99.99=30223]
2026-06-30 08:43:14:776 840 sec: 9220977 operations; 9023.3 current ops/sec; est completion in 1 minute [SCAN-LATENCY-PER-RECORD: Count=85715, Max=9911, Min=1, Avg=57.95, 50=25, 90=120, 99=532, 99.9=1811, 99.99=6411] [INSERT: Count=4565, Max=15767, Min=8, Avg=118.65, 50=70, 90=191, 99=932, 99.9=3397, 99.99=15767] [SCAN: Count=85766, Max=156031, Min=18, Avg=1859.07, 50=1059, 90=4359, 99=10223, 99.9=22815, 99.99=37151]
2026-06-30 08:43:24:751 850 sec: 9310463 operations; 8948.6 current ops/sec; est completion in 1 minute [SCAN-LATENCY-PER-RECORD: Count=85001, Max=12447, Min=1, Avg=57.29, 50=26, 90=118, 99=505, 99.9=1876, 99.99=4863] [INSERT: Count=4443, Max=4231, Min=14, Avg=129.51, 50=77, 90=216, 99=1072, 99.9=3323, 99.99=4231] [SCAN: Count=84952, Max=132735, Min=18, Avg=1864.02, 50=1099, 90=4351, 99=9575, 99.9=22863, 99.99=59775]
2026-06-30 08:43:34:751 860 sec: 9404915 operations; 9445.2 current ops/sec; est completion in 55 seconds [SCAN-LATENCY-PER-RECORD: Count=89773, Max=15455, Min=1, Avg=54.36, 50=25, 90=113, 99=464, 99.9=1618, 99.99=5087] [INSERT: Count=4701, Max=5327, Min=13, Avg=114.16, 50=72, 90=200, 99=960, 99.9=2861, 99.99=5327] [SCAN: Count=89784, Max=82623, Min=21, Avg=1770.99, 50=1064, 90=4195, 99=8743, 99.9=15319, 99.99=35167]
2026-06-30 08:43:44:764 870 sec: 9508923 operations; 10400.8 current ops/sec; est completion in 45 seconds [SCAN-LATENCY-PER-RECORD: Count=98890, Max=6815, Min=1, Avg=48.9, 50=24, 90=101, 99=417, 99.9=1374, 99.99=3759] [INSERT: Count=5106, Max=7031, Min=10, Avg=106.35, 50=66, 90=168, 99=751, 99.9=3415, 99.99=7031] [SCAN: Count=98889, Max=79039, Min=16, Avg=1609.7, 50=1015, 90=3745, 99=7415, 99.9=15063, 99.99=33503]
2026-06-30 08:43:54:754 880 sec: 9616929 operations; 10800.6 current ops/sec; est completion in 36 seconds [SCAN-LATENCY-PER-RECORD: Count=102655, Max=5579, Min=1, Avg=47.11, 50=23, 90=98, 99=400, 99.9=1313, 99.99=2979] [INSERT: Count=5341, Max=3921, Min=13, Avg=106.52, 50=70, 90=177, 99=733, 99.9=2681, 99.99=3921] [SCAN: Count=102684, Max=42367, Min=20, Avg=1545.18, 50=977, 90=3577, 99=7171, 99.9=13855, 99.99=25647]
2026-06-30 08:44:04:751 890 sec: 9706032 operations; 8910.3 current ops/sec; est completion in 27 seconds [SCAN-LATENCY-PER-RECORD: Count=84687, Max=15063, Min=1, Avg=56.94, 50=26, 90=119, 99=517, 99.9=1650, 99.99=3417] [INSERT: Count=4412, Max=4275, Min=15, Avg=145.94, 50=91, 90=231, 99=1322, 99.9=3609, 99.99=4275] [SCAN: Count=84644, Max=40351, Min=21, Avg=1873.59, 50=1080, 90=4459, 99=10007, 99.9=19839, 99.99=30847]
2026-06-30 08:44:14:801 900 sec: 9797456 operations; 9140.57 current ops/sec; est completion in 19 seconds [SCAN-LATENCY-PER-RECORD: Count=86867, Max=8051, Min=1, Avg=55.27, 50=25, 90=116, 99=476, 99.9=1596, 99.99=4069] [INSERT: Count=4574, Max=6067, Min=14, Avg=141.78, 50=86, 90=223, 99=1227, 99.9=3859, 99.99=6067] [SCAN: Count=86872, Max=58143, Min=10, Avg=1837.91, 50=1092, 90=4351, 99=9335, 99.9=18399, 99.99=37247]
2026-06-30 08:44:24:754 910 sec: 9867597 operations; 7015.5 current ops/sec; est completion in 13 seconds [SCAN-LATENCY-PER-RECORD: Count=66715, Max=23327, Min=1, Avg=74.42, 50=27, 90=157, 99=707, 99.9=2889, 99.99=8543] [INSERT: Count=3426, Max=11207, Min=17, Avg=180.15, 50=100, 90=251, 99=2113, 99.9=5895, 99.99=11207] [SCAN: Count=66735, Max=57055, Min=23, Avg=2368.8, 50=1144, 90=6051, 99=15279, 99.9=27567, 99.99=46015]
2026-06-30 08:44:34:752 920 sec: 9967362 operations; 9976.5 current ops/sec; est completion in 4 second [SCAN-LATENCY-PER-RECORD: Count=94671, Max=9215, Min=1, Avg=50.76, 50=24, 90=106, 99=424, 99.9=1404, 99.99=3953] [INSERT: Count=5082, Max=3983, Min=15, Avg=128.93, 50=82, 90=213, 99=1022, 99.9=3187, 99.99=3983] [SCAN: Count=94689, Max=54911, Min=16, Avg=1676.37, 50=1020, 90=3949, 99=7791, 99.9=13887, 99.99=46399]
2026-06-30 08:44:38:908 924 sec: 10000000 operations; 7851.34 current ops/sec; [CLEANUP: Count=16, Max=94335, Min=5, Avg=5942.88, 50=10, 90=640, 99=94335, 99.9=94335, 99.99=94335] [SCAN-LATENCY-PER-RECORD: Count=31003, Max=6155, Min=1, Avg=44.53, 50=20, 90=93, 99=384, 99.9=1230, 99.99=2881] [INSERT: Count=1627, Max=4271, Min=15, Avg=114.59, 50=79, 90=178, 99=752, 99.9=3995, 99.99=4271] [SCAN: Count=30953, Max=21903, Min=13, Avg=1454.19, 50=884, 90=3391, 99=7099, 99.9=12311, 99.99=17183]
[OVERALL], RunTime(ms), 924157
[OVERALL], Throughput(ops/sec), 10820.672245083899
[TOTAL_GCS_G1_Young_Generation], Count, 5380
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 17159
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 1.8567191505339462
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 5380
[TOTAL_GC_TIME], Time(ms), 17159
[TOTAL_GC_TIME_%], Time(%), 1.8567191505339462
[CLEANUP], Operations, 16
[CLEANUP], AverageLatency(us), 5942.875
[CLEANUP], MinLatency(us), 5
[CLEANUP], MaxLatency(us), 94335
[CLEANUP], 50thPercentileLatency(us), 10
[CLEANUP], 95thPercentileLatency(us), 94335
[CLEANUP], 99thPercentileLatency(us), 94335
[SCAN-LATENCY-PER-RECORD], Operations, 9500976
[SCAN-LATENCY-PER-RECORD], AverageLatency(us), 46.87532322995027
[SCAN-LATENCY-PER-RECORD], MinLatency(us), 1
[SCAN-LATENCY-PER-RECORD], MaxLatency(us), 53599
[SCAN-LATENCY-PER-RECORD], 50thPercentileLatency(us), 22
[SCAN-LATENCY-PER-RECORD], 95thPercentileLatency(us), 150
[SCAN-LATENCY-PER-RECORD], 99thPercentileLatency(us), 399
[INSERT], Operations, 499024
[INSERT], AverageLatency(us), 104.63244252781429
[INSERT], MinLatency(us), 8
[INSERT], MaxLatency(us), 54175
[INSERT], 50thPercentileLatency(us), 65
[INSERT], 95thPercentileLatency(us), 266
[INSERT], 99thPercentileLatency(us), 723
[INSERT], Return=OK, 499024
[SCAN], Operations, 9500976
[SCAN], AverageLatency(us), 1541.1975084454482
[SCAN], MinLatency(us), 10
[SCAN], MaxLatency(us), 509695
[SCAN], 50thPercentileLatency(us), 935
[SCAN], 95thPercentileLatency(us), 4531
[SCAN], 99thPercentileLatency(us), 7247
[SCAN], Return=OK, 9500976
```
---
### Workload F (Read-modify-write)
```shell
meet@DESKTOP-20D4N8C:~/ycsb/YCSB$ # Workload F (Read-modify-write)
echo "=== Workload F ==="
rm -rf "$DB_DIR"
mkdir -p "$DB_DIR"
./bin/ycsb load rocksdb -s -P workloads/workloadf \
  -p rocksdb.dir="$DB_DIR" \
  -p recordcount=$RECORDS \
  -p threadcount=$THREADS
./bin/ycsb run rocksdb -s -P workloads/workloadf \
  -p rocksdb.dir="$DB_DIR" \
  -p recordcount=$RECORDS \
  -p operationcount=$OPS \
  -p threadcount=$THREADS
=== Workload F ===
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmplec044mz'
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
[INFO] YCSB Root .......................................... SUCCESS [  3.630 s]
[INFO] Core YCSB .......................................... SUCCESS [  4.550 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.262 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.817 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  1.910 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  12.164 s
[INFO] Finished at: 2026-06-30T08:46:18Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadf -p rocksdb.dir=/home/meet/ycsb-rocksdb-data-10m -p recordcount=10000000 -p threadcount=16 -load
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadf -p rocksdb.dir=/home/meet/ycsb-rocksdb-data-10m -p recordcount=10000000 -p threadcount=16 -load
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-7] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /home/meet/ycsb-rocksdb-data-10m
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

2026-06-30 08:46:18:591 0 sec: 0 operations; est completion in 0 second
DBWrapper: report latency for each error is false and specific error codes to track for latency are: []
2026-06-30 08:46:28:538 10 sec: 344660 operations; 34466 current ops/sec; est completion in 4 minutes [INSERT: Count=344751, Max=23487, Min=6, Avg=454.56, 50=437, 90=575, 99=779, 99.9=2731, 99.99=5799]
2026-06-30 08:46:38:536 20 sec: 717534 operations; 37287.4 current ops/sec; est completion in 4 minutes [INSERT: Count=372805, Max=8551, Min=5, Avg=426.36, 50=415, 90=532, 99=675, 99.9=2026, 99.99=3341]
2026-06-30 08:46:48:537 30 sec: 1085340 operations; 36780.6 current ops/sec; est completion in 4 minutes [INSERT: Count=367802, Max=12391, Min=9, Avg=432.53, 50=420, 90=542, 99=711, 99.9=1998, 99.99=3531]
2026-06-30 08:46:58:536 40 sec: 1440590 operations; 35525 current ops/sec; est completion in 3 minutes [INSERT: Count=355254, Max=6487, Min=18, Avg=447.82, 50=433, 90=562, 99=787, 99.9=2121, 99.99=4255]
2026-06-30 08:47:08:537 50 sec: 1798069 operations; 35747.9 current ops/sec; est completion in 3 minutes [INSERT: Count=357479, Max=8919, Min=11, Avg=445, 50=432, 90=558, 99=748, 99.9=2035, 99.99=2943]
2026-06-30 08:47:18:539 60 sec: 2131313 operations; 33321.07 current ops/sec; est completion in 3 minutes [INSERT: Count=333298, Max=7003, Min=12, Avg=477.46, 50=454, 90=611, 99=983, 99.9=2613, 99.99=5311]
2026-06-30 08:47:28:537 70 sec: 2465920 operations; 33464.05 current ops/sec; est completion in 3 minutes [INSERT: Count=334555, Max=23615, Min=6, Avg=475.41, 50=453, 90=588, 99=922, 99.9=3109, 99.99=11207]
2026-06-30 08:47:38:537 80 sec: 2825187 operations; 35926.7 current ops/sec; est completion in 3 minutes [INSERT: Count=359269, Max=17199, Min=14, Avg=442.85, 50=430, 90=550, 99=725, 99.9=2091, 99.99=4795]
2026-06-30 08:47:48:536 90 sec: 3191829 operations; 36664.2 current ops/sec; est completion in 3 minutes [INSERT: Count=366637, Max=6387, Min=11, Avg=433.91, 50=423, 90=539, 99=671, 99.9=2099, 99.99=3119]
2026-06-30 08:47:58:537 100 sec: 3521603 operations; 32977.4 current ops/sec; est completion in 3 minutes [INSERT: Count=329772, Max=31711, Min=4, Avg=482.4, 50=414, 90=635, 99=2907, 99.9=7271, 99.99=11471]
2026-06-30 08:48:08:536 110 sec: 3877534 operations; 35593.1 current ops/sec; est completion in 2 minutes [INSERT: Count=355931, Max=11815, Min=10, Avg=446.97, 50=433, 90=560, 99=752, 99.9=2025, 99.99=3547]
2026-06-30 08:48:18:543 120 sec: 4222160 operations; 34441.93 current ops/sec; est completion in 2 minutes [INSERT: Count=344607, Max=41247, Min=7, Avg=462.02, 50=412, 90=536, 99=1814, 99.9=12911, 99.99=29039]
2026-06-30 08:48:28:536 130 sec: 4533088 operations; 31111.47 current ops/sec; est completion in 2 minutes [INSERT: Count=310944, Max=33919, Min=5, Avg=511.4, 50=404, 90=626, 99=5111, 99.9=14919, 99.99=23135]
2026-06-30 08:48:38:536 140 sec: 4897950 operations; 36486.2 current ops/sec; est completion in 2 minutes [INSERT: Count=364862, Max=9535, Min=13, Avg=435.76, 50=421, 90=541, 99=752, 99.9=2091, 99.99=5011]
2026-06-30 08:48:48:536 150 sec: 5266328 operations; 36837.8 current ops/sec; est completion in 2 minutes [INSERT: Count=368382, Max=54847, Min=18, Avg=431.78, 50=418, 90=533, 99=697, 99.9=1920, 99.99=4755]
2026-06-30 08:48:58:542 160 sec: 5565090 operations; 29858.29 current ops/sec; est completion in 2 minutes [INSERT: Count=298775, Max=84543, Min=5, Avg=532.18, 50=402, 90=544, 99=6295, 99.9=19871, 99.99=43551]
2026-06-30 08:49:08:540 170 sec: 5813395 operations; 24845.41 current ops/sec; est completion in 2 minutes [INSERT: Count=248376, Max=368127, Min=6, Avg=640.83, 50=336, 90=614, 99=10935, 99.9=28319, 99.99=72447]
2026-06-30 08:49:18:536 180 sec: 6165524 operations; 35212.9 current ops/sec; est completion in 1 minute [INSERT: Count=352044, Max=24143, Min=14, Avg=451.66, 50=425, 90=557, 99=983, 99.9=2681, 99.99=14479]
2026-06-30 08:49:28:536 190 sec: 6534537 operations; 36901.3 current ops/sec; est completion in 1 minute [INSERT: Count=369010, Max=18159, Min=6, Avg=431.09, 50=418, 90=535, 99=728, 99.9=1931, 99.99=4523]
2026-06-30 08:49:38:538 200 sec: 6858889 operations; 32428.71 current ops/sec; est completion in 1 minute [INSERT: Count=324360, Max=42655, Min=7, Avg=490.18, 50=404, 90=537, 99=4583, 99.9=16239, 99.99=28447]
2026-06-30 08:49:48:538 210 sec: 7145509 operations; 28662 current ops/sec; est completion in 1 minute [INSERT: Count=286596, Max=608255, Min=5, Avg=553.28, 50=301, 90=543, 99=8479, 99.9=24383, 99.99=139903]
2026-06-30 08:49:58:537 220 sec: 7467745 operations; 32230.05 current ops/sec; est completion in 1 minute [INSERT: Count=322256, Max=70783, Min=5, Avg=494.17, 50=420, 90=587, 99=3281, 99.9=12415, 99.99=50079]
2026-06-30 08:50:08:536 230 sec: 7827666 operations; 35992.1 current ops/sec; est completion in 1 minute [INSERT: Count=359921, Max=9471, Min=9, Avg=442, 50=424, 90=550, 99=897, 99.9=2123, 99.99=4251]
2026-06-30 08:50:18:541 240 sec: 8187736 operations; 35992.6 current ops/sec; est completion in 54 seconds [INSERT: Count=360050, Max=242687, Min=8, Avg=441.35, 50=419, 90=540, 99=703, 99.9=1799, 99.99=4491]
2026-06-30 08:50:28:542 250 sec: 8403829 operations; 21604.98 current ops/sec; est completion in 48 seconds [INSERT: Count=216093, Max=142079, Min=6, Avg=736.06, 50=15, 90=935, 99=14047, 99.9=28607, 99.99=55967]
2026-06-30 08:50:38:536 260 sec: 8732700 operations; 32906.84 current ops/sec; est completion in 38 seconds [INSERT: Count=328887, Max=31583, Min=5, Avg=483.64, 50=373, 90=654, 99=5543, 99.9=12639, 99.99=18911]
2026-06-30 08:50:48:537 270 sec: 9086645 operations; 35394.5 current ops/sec; est completion in 28 seconds [INSERT: Count=353944, Max=21263, Min=7, Avg=449.53, 50=423, 90=557, 99=1016, 99.9=2205, 99.99=15255]
2026-06-30 08:50:58:538 280 sec: 9434880 operations; 34816.54 current ops/sec; est completion in 17 seconds [INSERT: Count=348220, Max=39743, Min=7, Avg=456.48, 50=423, 90=542, 99=711, 99.9=12095, 99.99=27887]
2026-06-30 08:51:08:541 290 sec: 9672780 operations; 23794.76 current ops/sec; est completion in 10 seconds [INSERT: Count=238017, Max=273919, Min=6, Avg=669.29, 50=291, 90=704, 99=10063, 99.9=35231, 99.99=211455]
2026-06-30 08:51:18:482 299 sec: 10000000 operations; 32899.66 current ops/sec; [CLEANUP: Count=16, Max=57567, Min=5, Avg=3609.38, 50=8, 90=81, 99=57567, 99.9=57567, 99.99=57567] [INSERT: Count=327103, Max=15087, Min=5, Avg=431.37, 50=401, 90=570, 99=1212, 99.9=3769, 99.99=8131]
[OVERALL], RunTime(ms), 299946
[OVERALL], Throughput(ops/sec), 33339.334413527766
[TOTAL_GCS_G1_Young_Generation], Count, 686
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 1679
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.5597674248031312
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 686
[TOTAL_GC_TIME], Time(ms), 1679
[TOTAL_GC_TIME_%], Time(%), 0.5597674248031312
[CLEANUP], Operations, 16
[CLEANUP], AverageLatency(us), 3609.375
[CLEANUP], MinLatency(us), 5
[CLEANUP], MaxLatency(us), 57567
[CLEANUP], 50thPercentileLatency(us), 8
[CLEANUP], 95thPercentileLatency(us), 57567
[CLEANUP], 99thPercentileLatency(us), 57567
[INSERT], Operations, 10000000
[INSERT], AverageLatency(us), 475.1389802
[INSERT], MinLatency(us), 4
[INSERT], MaxLatency(us), 608255
[INSERT], 50thPercentileLatency(us), 416
[INSERT], 95thPercentileLatency(us), 628
[INSERT], 99thPercentileLatency(us), 2103
[INSERT], Return=OK, 10000000
[WARN]  Running against a source checkout. In order to get our runtime dependencies we'll have to invoke Maven. Depending on the state of your system, this may take ~30-45 seconds
[DEBUG]  Running 'mvn -B -pl site.ycsb:rocksdb-binding -am package -DskipTests dependency:list -DoutputAbsoluteArtifactFilename -DappendOutput=false -DoutputFile=/tmp/tmplino7u3k'
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
[INFO] YCSB Root .......................................... SUCCESS [  2.535 s]
[INFO] Core YCSB .......................................... SUCCESS [  3.020 s]
[INFO] Per Datastore Binding descriptor ................... SUCCESS [  0.191 s]
[INFO] YCSB Datastore Binding Parent ...................... SUCCESS [  0.478 s]
[INFO] RocksDB Java Binding ............................... SUCCESS [  1.295 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  8.213 s
[INFO] Finished at: 2026-06-30T08:51:28Z
[INFO] ------------------------------------------------------------------------
java -cp /home/meet/ycsb/YCSB/rocksdb/conf:/home/meet/ycsb/YCSB/rocksdb/target/rocksdb-binding-0.18.0-SNAPSHOT.jar:/home/meet/.m2/repository/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar:/home/meet/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:/home/meet/.m2/repository/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:/home/meet/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.4/jackson-mapper-asl-1.9.4.jar:/home/meet/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar:/home/meet/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.4/jackson-core-asl-1.9.4.jar:/home/meet/ycsb/YCSB/core/target/core-0.18.0-SNAPSHOT.jar site.ycsb.Client -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadf -p rocksdb.dir=/home/meet/ycsb-rocksdb-data-10m -p recordcount=10000000 -p operationcount=10000000 -p threadcount=16 -t
Command line: -db site.ycsb.db.rocksdb.RocksDBClient -s -P workloads/workloadf -p rocksdb.dir=/home/meet/ycsb-rocksdb-data-10m -p recordcount=10000000 -p operationcount=10000000 -p threadcount=16 -t
YCSB Client 0.18.0-SNAPSHOT

Loading workload...
Starting test.
[Thread-7] INFO site.ycsb.db.rocksdb.RocksDBClient - RocksDB data dir: /home/meet/ycsb-rocksdb-data-10m
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::loadLibrary has been called by org.rocksdb.RocksDB in an unnamed module (file:/home/meet/.m2/repository/org/rocksdb/rocksdbjni/6.2.2/rocksdbjni-6.2.2.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled

2026-06-30 08:51:28:674 0 sec: 0 operations; est completion in 0 second
DBWrapper: report latency for each error is false and specific error codes to track for latency are: []
2026-06-30 08:51:38:631 10 sec: 216915 operations; 21689.33 current ops/sec; est completion in 7 minutes [READ: Count=216938, Max=30559, Min=1, Avg=422.84, 50=154, 90=975, 99=3389, 99.9=10991, 99.99=22751] [READ-MODIFY-WRITE: Count=108913, Max=31087, Min=10, Avg=835.77, 50=661, 90=1553, 99=4143, 99.9=11919, 99.99=23407] [UPDATE: Count=109045, Max=9471, Min=7, Avg=408.44, 50=364, 90=789, 99=1630, 99.9=3649, 99.99=5215]
2026-06-30 08:51:48:631 20 sec: 517172 operations; 30025.7 current ops/sec; est completion in 6 minutes [READ: Count=300259, Max=65439, Min=1, Avg=318.4, 50=119, 90=709, 99=2321, 99.9=10703, 99.99=21647] [READ-MODIFY-WRITE: Count=150382, Max=42719, Min=10, Avg=739.19, 50=612, 90=1293, 99=3193, 99.9=10951, 99.99=21087] [UPDATE: Count=150309, Max=7939, Min=6, Avg=418.62, 50=389, 90=737, 99=1418, 99.9=3849, 99.99=5815]
2026-06-30 08:51:58:631 30 sec: 856647 operations; 33947.5 current ops/sec; est completion in 5 minutes [READ: Count=339484, Max=25423, Min=1, Avg=252.61, 50=72, 90=639, 99=1486, 99.9=5403, 99.99=12103] [READ-MODIFY-WRITE: Count=169371, Max=25711, Min=10, Avg=685.34, 50=588, 90=1223, 99=2451, 99.9=6583, 99.99=12671] [UPDATE: Count=169365, Max=9975, Min=7, Avg=429.95, 50=398, 90=738, 99=1438, 99.9=3149, 99.99=6695]
2026-06-30 08:52:08:631 40 sec: 1218306 operations; 36165.9 current ops/sec; est completion in 4 minutes [READ: Count=361647, Max=59327, Min=1, Avg=221.19, 50=68, 90=552, 99=1567, 99.9=5383, 99.99=16607] [READ-MODIFY-WRITE: Count=181324, Max=59679, Min=8, Avg=656.8, 50=558, 90=1111, 99=2455, 99.9=6435, 99.99=39423] [UPDATE: Count=181310, Max=48415, Min=6, Avg=433.62, 50=401, 90=694, 99=1342, 99.9=3785, 99.99=20927]
2026-06-30 08:52:18:635 50 sec: 1575329 operations; 35702.3 current ops/sec; est completion in 4 minutes [READ: Count=357177, Max=27327, Min=1, Avg=218.67, 50=75, 90=549, 99=1325, 99.9=6759, 99.99=14511] [READ-MODIFY-WRITE: Count=178755, Max=27535, Min=9, Avg=674.4, 50=579, 90=1144, 99=2445, 99.9=8239, 99.99=15455] [UPDATE: Count=178740, Max=9831, Min=7, Avg=450.7, 50=418, 90=735, 99=1457, 99.9=3483, 99.99=6763]
2026-06-30 08:52:28:638 60 sec: 1795627 operations; 22023.19 current ops/sec; est completion in 4 minutes [READ: Count=220134, Max=71167, Min=1, Avg=386.89, 50=83, 90=642, 99=5707, 99.9=23439, 99.99=45279] [READ-MODIFY-WRITE: Count=109988, Max=71807, Min=12, Avg=1063.99, 50=601, 90=1456, 99=12295, 99.9=27407, 99.99=51039] [UPDATE: Count=109972, Max=54783, Min=8, Avg=671.83, 50=417, 90=854, 99=8623, 99.9=19519, 99.99=27983]
2026-06-30 08:52:38:633 70 sec: 1914060 operations; 11846.85 current ops/sec; est completion in 4 minutes [READ: Count=118488, Max=473599, Min=1, Avg=1045.81, 50=236, 90=2303, 99=13295, 99.9=38943, 99.99=171263] [READ-MODIFY-WRITE: Count=59661, Max=473599, Min=8, Avg=1661.02, 50=655, 90=3581, 99=16007, 99.9=38655, 99.99=383743] [UPDATE: Count=59672, Max=277759, Min=5, Avg=592.82, 50=204, 90=1017, 99=7487, 99.9=18591, 99.99=128895]
2026-06-30 08:52:48:631 80 sec: 2248505 operations; 33444.5 current ops/sec; est completion in 4 minutes [READ: Count=334408, Max=32575, Min=1, Avg=265.8, 50=61, 90=661, 99=1988, 99.9=7127, 99.99=20927] [READ-MODIFY-WRITE: Count=167558, Max=31167, Min=8, Avg=684.7, 50=575, 90=1243, 99=2701, 99.9=7587, 99.99=21071] [UPDATE: Count=167558, Max=12703, Min=6, Avg=416.07, 50=384, 90=735, 99=1448, 99.9=3165, 99.99=4607]
2026-06-30 08:52:58:631 90 sec: 2617665 operations; 36916 current ops/sec; est completion in 4 minutes [READ: Count=369146, Max=58335, Min=1, Avg=198.61, 50=63, 90=490, 99=1309, 99.9=5531, 99.99=11415] [READ-MODIFY-WRITE: Count=184487, Max=64383, Min=10, Avg=661.14, 50=571, 90=1105, 99=2393, 99.9=5715, 99.99=11391] [UPDATE: Count=184492, Max=7075, Min=6, Avg=462, 50=421, 90=746, 99=1553, 99.9=3291, 99.99=4923]
2026-06-30 08:53:08:631 100 sec: 2934231 operations; 31656.6 current ops/sec; est completion in 4 minutes [READ: Count=316566, Max=26911, Min=1, Avg=247.49, 50=76, 90=563, 99=1933, 99.9=10087, 99.99=18479] [READ-MODIFY-WRITE: Count=158150, Max=27535, Min=11, Avg=758.78, 50=636, 90=1302, 99=3165, 99.9=10519, 99.99=18959] [UPDATE: Count=158151, Max=6787, Min=7, Avg=507.92, 50=456, 90=880, 99=1904, 99.9=3983, 99.99=5799]
2026-06-30 08:53:18:639 110 sec: 3269031 operations; 33480 current ops/sec; est completion in 3 minutes [READ: Count=334816, Max=40671, Min=1, Avg=259.72, 50=77, 90=640, 99=1551, 99.9=5371, 99.99=12703] [READ-MODIFY-WRITE: Count=166945, Max=29343, Min=10, Avg=690.82, 50=598, 90=1224, 99=2541, 99.9=5731, 99.99=12943] [UPDATE: Count=166937, Max=6799, Min=6, Avg=430.25, 50=399, 90=738, 99=1466, 99.9=3337, 99.99=5047]
2026-06-30 08:53:28:634 120 sec: 3621592 operations; 35256.1 current ops/sec; est completion in 3 minutes [READ: Count=352608, Max=50527, Min=1, Avg=226.6, 50=75, 90=553, 99=1512, 99.9=7215, 99.99=19535] [READ-MODIFY-WRITE: Count=176854, Max=50911, Min=9, Avg=675.31, 50=577, 90=1145, 99=2515, 99.9=7715, 99.99=22335] [UPDATE: Count=176866, Max=8215, Min=6, Avg=444.74, 50=413, 90=729, 99=1437, 99.9=3513, 99.99=5059]
2026-06-30 08:53:38:634 130 sec: 3955798 operations; 33410.58 current ops/sec; est completion in 3 minutes [READ: Count=334158, Max=40831, Min=1, Avg=231.99, 50=80, 90=548, 99=1802, 99.9=8279, 99.99=18159] [READ-MODIFY-WRITE: Count=167460, Max=41471, Min=10, Avg=719.78, 50=589, 90=1176, 99=3431, 99.9=12255, 99.99=21951] [UPDATE: Count=167462, Max=26671, Min=6, Avg=484.66, 50=425, 90=761, 99=1898, 99.9=8999, 99.99=17791]
2026-06-30 08:53:48:654 140 sec: 4042412 operations; 8660.53 current ops/sec; est completion in 3 minutes [READ: Count=86731, Max=70463, Min=2, Avg=1210.99, 50=130, 90=3237, 99=15831, 99.9=34399, 99.99=54655] [READ-MODIFY-WRITE: Count=43312, Max=70783, Min=12, Avg=2485.32, 50=806, 90=7059, 99=19391, 99.9=39039, 99.99=60767] [UPDATE: Count=43282, Max=57695, Min=7, Avg=1265.99, 50=120, 90=4259, 99=11583, 99.9=21823, 99.99=57215]
2026-06-30 08:53:58:631 150 sec: 4304576 operations; 26226.89 current ops/sec; est completion in 3 minutes [READ: Count=262040, Max=40543, Min=1, Avg=365.63, 50=72, 90=802, 99=3653, 99.9=13895, 99.99=27007] [READ-MODIFY-WRITE: Count=131833, Max=40095, Min=10, Avg=842.48, 50=612, 90=1556, 99=5175, 99.9=14839, 99.99=26943] [UPDATE: Count=131861, Max=20895, Min=7, Avg=475.45, 50=381, 90=885, 99=2661, 99.9=6535, 99.99=14455]
2026-06-30 08:54:08:631 160 sec: 4658888 operations; 35431.2 current ops/sec; est completion in 3 minutes [READ: Count=354351, Max=29199, Min=1, Avg=209.33, 50=59, 90=506, 99=1434, 99.9=7775, 99.99=14895] [READ-MODIFY-WRITE: Count=176801, Max=29631, Min=10, Avg=688.45, 50=586, 90=1180, 99=2647, 99.9=8535, 99.99=17327] [UPDATE: Count=176791, Max=17439, Min=6, Avg=477.6, 50=423, 90=816, 99=1717, 99.9=3663, 99.99=10247]
2026-06-30 08:54:18:631 170 sec: 4993519 operations; 33463.1 current ops/sec; est completion in 2 minutes [READ: Count=334598, Max=43263, Min=1, Avg=222.59, 50=69, 90=520, 99=1711, 99.9=8199, 99.99=18815] [READ-MODIFY-WRITE: Count=167243, Max=32271, Min=8, Avg=727.68, 50=601, 90=1241, 99=3165, 99.9=8871, 99.99=19503] [UPDATE: Count=167254, Max=13751, Min=6, Avg=503.06, 50=438, 90=847, 99=2057, 99.9=4327, 99.99=9495]
2026-06-30 08:54:28:640 180 sec: 5304776 operations; 31125.7 current ops/sec; est completion in 2 minutes [READ: Count=311250, Max=60639, Min=1, Avg=239.29, 50=78, 90=555, 99=1923, 99.9=8335, 99.99=18431] [READ-MODIFY-WRITE: Count=155692, Max=55359, Min=9, Avg=783.34, 50=628, 90=1386, 99=3649, 99.9=9687, 99.99=18079] [UPDATE: Count=155694, Max=17167, Min=6, Avg=541.46, 50=449, 90=955, 99=2495, 99.9=5559, 99.99=14255]
2026-06-30 08:54:38:632 190 sec: 5601431 operations; 29665.5 current ops/sec; est completion in 2 minutes [READ: Count=296769, Max=34399, Min=1, Avg=260.93, 50=86, 90=594, 99=2119, 99.9=9295, 99.99=16623] [READ-MODIFY-WRITE: Count=149086, Max=25519, Min=10, Avg=812.07, 50=654, 90=1440, 99=3823, 99.9=10239, 99.99=18031] [UPDATE: Count=149070, Max=12927, Min=6, Avg=545.14, 50=457, 90=975, 99=2431, 99.9=5047, 99.99=8999]
2026-06-30 08:54:48:631 200 sec: 5910278 operations; 30884.7 current ops/sec; est completion in 2 minutes [READ: Count=308735, Max=26991, Min=1, Avg=252.33, 50=68, 90=611, 99=1795, 99.9=6535, 99.99=16655] [READ-MODIFY-WRITE: Count=154611, Max=27167, Min=9, Avg=776.99, 50=630, 90=1407, 99=3357, 99.9=8287, 99.99=17983] [UPDATE: Count=154618, Max=14183, Min=6, Avg=520.97, 50=435, 90=940, 99=2349, 99.9=4511, 99.99=11575]
2026-06-30 08:54:58:633 210 sec: 6228745 operations; 31846.7 current ops/sec; est completion in 2 minutes [READ: Count=318526, Max=60127, Min=1, Avg=232.34, 50=71, 90=557, 99=1645, 99.9=8263, 99.99=18831] [READ-MODIFY-WRITE: Count=159533, Max=60799, Min=9, Avg=765.95, 50=633, 90=1339, 99=3191, 99.9=8935, 99.99=22447] [UPDATE: Count=159567, Max=31311, Min=6, Avg=530.73, 50=457, 90=924, 99=2173, 99.9=4599, 99.99=7883]
2026-06-30 08:55:08:631 220 sec: 6568332 operations; 33958.7 current ops/sec; est completion in 1 minute [READ: Count=339506, Max=34815, Min=1, Avg=216.7, 50=73, 90=518, 99=1395, 99.9=8479, 99.99=19407] [READ-MODIFY-WRITE: Count=169896, Max=35263, Min=10, Avg=721.17, 50=612, 90=1217, 99=2781, 99.9=9383, 99.99=20175] [UPDATE: Count=169855, Max=16191, Min=6, Avg=500.28, 50=447, 90=834, 99=1857, 99.9=4231, 99.99=7215]
2026-06-30 08:55:18:631 230 sec: 6919165 operations; 35083.3 current ops/sec; est completion in 1 minute [READ: Count=350842, Max=31375, Min=1, Avg=222.46, 50=77, 90=529, 99=1363, 99.9=8559, 99.99=14127] [READ-MODIFY-WRITE: Count=175737, Max=30031, Min=9, Avg=683.91, 50=589, 90=1143, 99=2535, 99.9=9079, 99.99=14455] [UPDATE: Count=175788, Max=7723, Min=6, Avg=458.6, 50=423, 90=752, 99=1489, 99.9=3831, 99.99=6371]
2026-06-30 08:55:28:631 240 sec: 7270173 operations; 35100.8 current ops/sec; est completion in 1 minute [READ: Count=351021, Max=39295, Min=1, Avg=230.05, 50=62, 90=575, 99=1387, 99.9=5631, 99.99=17039] [READ-MODIFY-WRITE: Count=175624, Max=38943, Min=9, Avg=676.77, 50=584, 90=1175, 99=2403, 99.9=6379, 99.99=17343] [UPDATE: Count=175590, Max=8391, Min=6, Avg=443.18, 50=409, 90=752, 99=1467, 99.9=3205, 99.99=4687]
2026-06-30 08:55:38:639 250 sec: 7622017 operations; 35184.4 current ops/sec; est completion in 1 minute [READ: Count=351932, Max=44991, Min=1, Avg=215.72, 50=65, 90=524, 99=1505, 99.9=7923, 99.99=19967] [READ-MODIFY-WRITE: Count=176220, Max=45407, Min=8, Avg=688.15, 50=587, 90=1162, 99=2639, 99.9=8151, 99.99=20431] [UPDATE: Count=176203, Max=7047, Min=6, Avg=469.76, 50=429, 90=779, 99=1551, 99.9=3539, 99.99=5007]
2026-06-30 08:55:48:634 260 sec: 7970760 operations; 34874.3 current ops/sec; est completion in 1 minute [READ: Count=348712, Max=31871, Min=1, Avg=219.34, 50=73, 90=523, 99=1642, 99.9=7311, 99.99=17215] [READ-MODIFY-WRITE: Count=174381, Max=32959, Min=8, Avg=693.61, 50=592, 90=1169, 99=2663, 99.9=8751, 99.99=20239] [UPDATE: Count=174368, Max=22719, Min=6, Avg=470.74, 50=430, 90=781, 99=1571, 99.9=3525, 99.99=10599]
2026-06-30 08:55:58:632 270 sec: 8307099 operations; 33630.54 current ops/sec; est completion in 56 seconds [READ: Count=336473, Max=73855, Min=1, Avg=243.02, 50=74, 90=567, 99=1602, 99.9=8543, 99.99=30959] [READ-MODIFY-WRITE: Count=168192, Max=74687, Min=9, Avg=704.42, 50=598, 90=1187, 99=2729, 99.9=8967, 99.99=31423] [UPDATE: Count=168229, Max=7567, Min=6, Avg=458.34, 50=420, 90=766, 99=1569, 99.9=3423, 99.99=4787]
2026-06-30 08:56:08:631 280 sec: 8675757 operations; 36869.49 current ops/sec; est completion in 43 seconds [READ: Count=368465, Max=42911, Min=1, Avg=210.87, 50=61, 90=542, 99=1226, 99.9=5035, 99.99=14623] [READ-MODIFY-WRITE: Count=184083, Max=43007, Min=8, Avg=651.85, 50=568, 90=1112, 99=2241, 99.9=5559, 99.99=14335] [UPDATE: Count=184058, Max=20367, Min=6, Avg=438.11, 50=408, 90=719, 99=1371, 99.9=3091, 99.99=4547]
2026-06-30 08:56:18:631 290 sec: 9042917 operations; 36716 current ops/sec; est completion in 31 seconds [READ: Count=367155, Max=42495, Min=1, Avg=204.64, 50=66, 90=508, 99=1342, 99.9=6067, 99.99=16831] [READ-MODIFY-WRITE: Count=184196, Max=43103, Min=9, Avg=660.87, 50=568, 90=1103, 99=2431, 99.9=6679, 99.99=17263] [UPDATE: Count=184208, Max=9799, Min=6, Avg=453.5, 50=420, 90=725, 99=1461, 99.9=3557, 99.99=4675]
2026-06-30 08:56:28:631 300 sec: 9413372 operations; 37045.5 current ops/sec; est completion in 19 seconds [READ: Count=370456, Max=26943, Min=1, Avg=198.79, 50=73, 90=502, 99=1134, 99.9=5259, 99.99=12807] [READ-MODIFY-WRITE: Count=185478, Max=18959, Min=9, Avg=660.4, 50=579, 90=1104, 99=2219, 99.9=6251, 99.99=13983] [UPDATE: Count=185477, Max=9079, Min=6, Avg=457.57, 50=426, 90=733, 99=1404, 99.9=3985, 99.99=6351]
2026-06-30 08:56:38:658 310 sec: 9671112 operations; 25766.27 current ops/sec; est completion in 11 seconds [READ: Count=257790, Max=51711, Min=1, Avg=323.11, 50=82, 90=619, 99=3763, 99.9=15255, 99.99=39487] [READ-MODIFY-WRITE: Count=129211, Max=52191, Min=9, Avg=913.69, 50=625, 90=1611, 99=6403, 99.9=16447, 99.99=41727] [UPDATE: Count=129185, Max=20287, Min=5, Avg=588.04, 50=438, 90=1016, 99=4085, 99.9=7931, 99.99=11015]
2026-06-30 08:56:48:631 320 sec: 9927621 operations; 25658.6 current ops/sec; est completion in 3 second [READ: Count=256456, Max=62527, Min=1, Avg=377.4, 50=64, 90=811, 99=4123, 99.9=14215, 99.99=39039] [READ-MODIFY-WRITE: Count=128116, Max=61727, Min=10, Avg=864.32, 50=633, 90=1594, 99=5179, 99.9=15103, 99.99=39455] [UPDATE: Count=128142, Max=12623, Min=6, Avg=482.89, 50=394, 90=920, 99=2573, 99.9=5195, 99.99=9135]
2026-06-30 08:56:51:076 322 sec: 10000000 operations; 29614.98 current ops/sec; [READ: Count=72363, Max=22767, Min=1, Avg=240.22, 50=58, 90=564, 99=2305, 99.9=6075, 99.99=12479] [READ-MODIFY-WRITE: Count=36033, Max=23183, Min=8, Avg=650.7, 50=505, 90=1282, 99=3221, 99.9=6495, 99.99=12943] [CLEANUP: Count=16, Max=73535, Min=5, Avg=4600.75, 50=7, 90=16, 99=73535, 99.9=73535, 99.99=73535] [UPDATE: Count=36007, Max=5559, Min=6, Avg=408.34, 50=324, 90=847, 99=1893, 99.9=3505, 99.99=4691]
[OVERALL], RunTime(ms), 322445
[OVERALL], Throughput(ops/sec), 31013.04098373366
[TOTAL_GCS_G1_Young_Generation], Count, 978
[TOTAL_GC_TIME_G1_Young_Generation], Time(ms), 1820
[TOTAL_GC_TIME_%_G1_Young_Generation], Time(%), 0.5644373459039527
[TOTAL_GCS_G1_Concurrent_GC], Count, 0
[TOTAL_GC_TIME_G1_Concurrent_GC], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Concurrent_GC], Time(%), 0.0
[TOTAL_GCS_G1_Old_Generation], Count, 0
[TOTAL_GC_TIME_G1_Old_Generation], Time(ms), 0
[TOTAL_GC_TIME_%_G1_Old_Generation], Time(%), 0.0
[TOTAL_GCs], Count, 978
[TOTAL_GC_TIME], Time(ms), 1820
[TOTAL_GC_TIME_%], Time(%), 0.5644373459039527
[READ], Operations, 10000000
[READ], AverageLatency(us), 266.9010106
[READ], MinLatency(us), 1
[READ], MaxLatency(us), 473599
[READ], 50thPercentileLatency(us), 73
[READ], 95thPercentileLatency(us), 806
[READ], 99thPercentileLatency(us), 2271
[READ], Return=OK, 10000000
[READ-MODIFY-WRITE], Operations, 5005126
[READ-MODIFY-WRITE], AverageLatency(us), 753.6735175098489
[READ-MODIFY-WRITE], MinLatency(us), 8
[READ-MODIFY-WRITE], MaxLatency(us), 473599
[READ-MODIFY-WRITE], 50thPercentileLatency(us), 596
[READ-MODIFY-WRITE], 95thPercentileLatency(us), 1636
[READ-MODIFY-WRITE], 99thPercentileLatency(us), 3813
[CLEANUP], Operations, 16
[CLEANUP], AverageLatency(us), 4600.75
[CLEANUP], MinLatency(us), 5
[CLEANUP], MaxLatency(us), 73535
[CLEANUP], 50thPercentileLatency(us), 7
[CLEANUP], 95thPercentileLatency(us), 73535
[CLEANUP], 99thPercentileLatency(us), 73535
[UPDATE], Operations, 5005126
[UPDATE], AverageLatency(us), 483.3976333462934
[UPDATE], MinLatency(us), 5
[UPDATE], MaxLatency(us), 277759
[UPDATE], 50thPercentileLatency(us), 417
[UPDATE], 95thPercentileLatency(us), 1015
[UPDATE], 99thPercentileLatency(us), 2115
[UPDATE], Return=OK, 5005126
```