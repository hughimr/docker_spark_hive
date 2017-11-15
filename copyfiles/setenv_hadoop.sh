#!/bin/bash

# set hadoop variables
echo "alias starthadoop='/usr/local/hadoop-2.6.5/sbin/start-dfs.sh;/usr/local/hadoop-2.6.5/sbin/start-yarn.sh'" >> ~/.bashrc
source /home/hadoop/.bashrc

echo "export HADOOP_HOME=/usr/local/hadoop-2.6.5" >> ~/.bashrc
echo "export PATH=\$PATH:\$HADOOP_HOME/bin:\$HADOOP_HOME/sbin" >> ~/.bashrc
echo "alias stophadoop='/usr/local/hadoop-2.6.5/sbin/stop-all.sh'" >> ~/.bashrc
source /home/hadoop/.bashrc
echo "================================================================="
echo "done HADOOP variable settrings"
echo "================================================================="

#./sbin/start-dfs.sh
#./sbin/start-yarn.sh
