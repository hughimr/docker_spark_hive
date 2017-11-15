#!/bin/bash
# remove hadoop-master 
sudo docker rmi `sudo docker images | grep "spark-master" | awk '{print $3}'`
echo "done remove master image"
echo "==============================================="

# remove hadoop-slaves
sudo docker rmi `sudo docker images | grep "spark-slave" | awk '{print $3}'`
echo "done remove slave image"
echo "==============================================="
