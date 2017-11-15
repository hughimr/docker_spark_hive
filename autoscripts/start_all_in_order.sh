#!/bin/bash
# start hadoop first
./start_hadoop.sh

# start zookeeper
./start_zookeeper.sh

# start hbase 
./start_hbase.sh

# start spark
./start_spark.sh
