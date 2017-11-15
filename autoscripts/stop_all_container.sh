#!/bin/bash
# stop hadoop cluster
#sudo docker stop  hadoop-master
#sudo docker stop  hadoop-slave1
#sudo docker stop  hadoop-slave2
#sudo docker stop  hadoop-slave3
#sudo docker stop  hadoop-slave4

# stop spark cluster
sudo docker stop  spark-master
sudo docker stop  spark-slave1
sudo docker stop  spark-slave2
sudo docker stop  spark-slave3
sudo docker stop  spark-slave4
