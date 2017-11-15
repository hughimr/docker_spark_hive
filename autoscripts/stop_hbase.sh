#!/bin/bash
# stop hbase 
docker exec -ti `sudo docker ps | grep "spark-master" | awk '{print $1}'` bash -c "/usr/local/hbase-1.2.6/bin/stop-hbase.sh;jps"
echo "===================================================="
echo "HBase stoped !!!"
echo "===================================================="
