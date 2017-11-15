#!/bin/bash

cp ymlfiles/slave.yml Dockerfile
sudo docker build -t="flat2010:spark-slave" .

cp ymlfiles/master.yml Dockerfile
sudo docker build -t="flat2010:spark-master" .

#sudo docker run -t -i --privileged=true --net=none --name hadoop-master -h hadoop-master -d -P -p 50070:50070 -p 8088:8088 flat2010:hadoop-master 
#sudo docker run --name hadoop-master -v /home/develop/hadoop_datas:/home/hadoop/hadoop_datas -h hadoop-master -d -P -p 8042:8042 -p 19888:19888 -p 50070:50070 -p 8088:8088 -p 9000:9000 -p 9001:9001 -p 2181:2181 -p 16010:16010 -p 16301:16301 -p 16201:16201 flat2010:hadoop-master 
#sudo docker run -t -i --privileged=true --net=none --dns 192.168.1.107 --name hadoop-slave1 -h hadoop-slave1 -d -P -p 8042:8042 flat2010:hadoop-slave 
#sudo docker run -t -i --privileged=true --net=none --dns 192.168.1.107 --name hadoop-slave2 -h hadoop-slave2 -d flat2010:hadoop-slave 
#sudo docker run -t -i --privileged=true --net=none --dns 192.168.1.107 --name hadoop-slave3 -h hadoop-slave3 -d flat2010:hadoop-slave 
#sudo docker run -t -i --privileged=true --net=none --dns 192.168.1.107 --name hadoop-slave4 -h hadoop-slave4 -d flat2010:hadoop-slave 

#sudo autoscripts/assign_static_ip.sh
