#!/bin/bash
#sudo echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config
#sudo echo "UserKnownHostsFile=/dev/null" >> /etc/ssh/ssh_config

#set zookeeper id
touch temp_myid
echo "110" > temp_myid
scp temp_myid hadoop@192.168.3.110:/usr/local/zookeeper-3.4.10/var/data/myid
echo "111" > temp_myid
scp temp_myid hadoop@192.168.3.111:/usr/local/zookeeper-3.4.10/var/data/myid
echo "112" > temp_myid
scp temp_myid hadoop@192.168.3.112:/usr/local/zookeeper-3.4.10/var/data/myid
echo "113" > temp_myid
scp temp_myid hadoop@192.168.3.113:/usr/local/zookeeper-3.4.10/var/data/myid
echo "114" > temp_myid
scp temp_myid hadoop@192.168.3.114:/usr/local/zookeeper-3.4.10/var/data/myid
rm temp_myid
echo "======================================================="
echo "done zookeeper myid settings"
echo "======================================================="

# set zookeeper variables

echo "export ZOOKEEPER_HOME=/usr/local/zookeeper-3.4.10/" >> ~/.bashrc
echo "export PATH=\$PATH:\$ZOOKEEPER_HOME/bin" >> ~/.bashrc
echo "alias startzookeeper='/usr/local/zookeeper-3.4.10/bin/zkServer.sh start'" >> ~/.bashrc
echo "alias stopzookeeper='/usr/local/zookeeper-3.4.10/bin/zkServer.sh stop'" >> ~/.bashrc
echo "============================================================"
echo "done zookeeper variable settings"
echo "============================================================"
