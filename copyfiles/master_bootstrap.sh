#!/bin/bash  
sudo cp /tmp/hosts.bak /etc/hosts

sudo /usr/sbin/sshd -D

source ~/.bashrc

#sudo /usr/local/hadoop-2.6.5/bin/hdfs namenode -format

#sudo /usr/local/hadoop-2.6.5/sbin/start-all.sh
