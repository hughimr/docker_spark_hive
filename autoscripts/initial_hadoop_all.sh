#!/bin/bash
# format namenode of hadoop
docker exec -ti `sudo docker ps | grep "flat2010:spark-master" | awk '{print $1}'` bash -c "source /home/hadoop/format_hadoop.sh;"

# set hadoop environment
docker exec `sudo docker ps | grep "flat2010:spark-master" | awk '{print $1}'` bash -c "source /home/hadoop/setenv_hadoop.sh"

# initial zookeeper
docker exec `sudo docker ps | grep "flat2010:spark-master" | awk '{print $1}'` bash -c "source /home/hadoop/initial_zookeeper.sh"
