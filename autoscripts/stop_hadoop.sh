#!/bin/bash
# stop hadoop at last 
docker exec -ti `sudo docker ps | grep "spark-master" | awk '{print $1}'` bash -c "/usr/local/hadoop-2.6.5/sbin/stop-all.sh"
echo "==================================="
echo "Hadoop stoped!!!"
echo "==================================="
