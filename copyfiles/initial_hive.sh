#!/bin/bash
source ~/.bashrc
#hive-hadoop
 hadoop fs  -mkdir -p /usr/hive/warehouse && hadoop fs  -mkdir -p /usr/hive/tmp &&hadoop fs  -mkdir -p /usr/hive/log && hadoop fs  -chmod 777 /usr/hive/warehouse && hadoop fs  -chmod 777 /usr/hive/tmp && hadoop fs  -chmod 777 /usr/hive/log

sudo /etc/init.d/mysql start

cd /usr/local/hive/bin && ./schematool --dbType mysql --initSchema

nohup /usr/local/hive/bin/hive --service metastore 2>&1 >> /usr/local/hive/logs/log.log &

cp ${SPARK_HOME}/jars/{scala-library,spark-core,spark-network-common}* ${HIVE_HOME}/lib