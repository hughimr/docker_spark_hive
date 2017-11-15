#!/bin/bash
# stop zookeeper
for dk in `sudo docker ps -a -q`;
do
    docker exec $dk bash -c "/usr/local/zookeeper-3.4.10/bin/zkServer.sh stop"
done

# show status
for dk in `sudo docker ps -a -q`;
do
    echo "============================================================================="
    docker exec $dk bash -c "ifconfig | grep 'inet addr' | awk '{print \$1\$2}' ; jps"
    echo "============================================================================="
done
echo "============================================================================="
echo "Zookeeper stoped !!!"
echo "============================================================================="
