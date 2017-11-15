#!/bin/bash
# format namenode of hadoop
docker exec -ti `sudo docker ps | grep "spark-master" | awk '{print $1}'` bash -c "source /home/hadoop/format_hadoop.sh;"

# set hadoop environment
docker exec `sudo docker ps | grep "spark-master" | awk '{print $1}'` bash -c "source /home/hadoop/setenv_hadoop.sh"

# initial zookeeper
docker exec `sudo docker ps | grep "spark-master" | awk '{print $1}'` bash -c "source /home/hadoop/initial_zookeeper.sh"

# initial spark 
#sudo mkdir -p /home/develop/spark_datas/spark_history
#sudo mkdir -p /home/develop/spark_datas/spark_events
docker exec `sudo docker ps | grep "spark-master" | awk '{print $1}'` bash -c "source /home/hadoop/initial_spark.sh"
