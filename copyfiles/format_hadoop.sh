#!/bin/bash

# start hadoop
cd /usr/local/hadoop-2.6.5
./bin/hdfs namenode -format
echo "========================================"
echo "done HDFS namenode FORMART!!!"
echo "========================================"

#./sbin/start-dfs.sh
#./sbin/start-yarn.sh
