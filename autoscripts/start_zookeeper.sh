#!/bin/bash
# start zookeeper
for dk in `sudo docker ps -q`;
do
    echo "=========================================================================="
    docker exec $dk bash -c "/usr/local/zookeeper-3.4.10/bin/zkServer.sh start"
    echo "=========================================================================="
done

# show status
for dk in `sudo docker ps -q`;
do
    echo "=========================================================================="
    docker exec $dk bash -c "ifconfig | grep 'inet addr' | awk '{print \$1\$2}' ; /usr/local/zookeeper-3.4.10/bin/zkServer.sh status"
    echo "=========================================================================="
done
