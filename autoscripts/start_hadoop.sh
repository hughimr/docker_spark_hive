#!/bin/bash
# start hadoop first
docker exec -ti `sudo docker ps | grep "spark-master" | awk '{print $1}'` bash -c "/usr/local/hadoop-2.6.5/sbin/start-dfs.sh;/usr/local/hadoop-2.6.5/sbin/start-yarn.sh"

echo "=========================================================================="
