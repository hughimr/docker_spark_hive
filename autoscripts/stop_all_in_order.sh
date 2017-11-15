#!/bin/bash
# stop hbase 
./stop_hbase.sh

# start zookeeper
./stop_zookeeper.sh

# stop spark 
./stop_spark.sh

# stop hadoop at last 
./stop_hadoop.sh
