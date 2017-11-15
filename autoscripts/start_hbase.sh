#!/bin/bash
# start hbase 
#docker exec `sudo docker ps | grep "flat2010:hadoop-master" | awk '{print $1}'` bash -c "/usr/local/hbase-1.2.6/bin/start-hbase.sh;jps"

docker exec `sudo docker ps | grep "spark-master" | awk '{print $1}'` bash -c "/usr/local/hbase-1.2.6/bin/start-hbase.sh;jps"
