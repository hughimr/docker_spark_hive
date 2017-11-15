#!/bin/bash  
#sudo echo '192.168.3.110 hadoop-master' >> /etc/hosts
#sudo echo '192.168.3.111 hadoop-slave1' >> /etc/hosts
#sudo echo '192.168.3.112 hadoop-slave2' >> /etc/hosts
#sudo echo '192.168.3.113 hadoop-slave3' >> /etc/hosts
#sudo echo '192.168.3.114 hadoop-slave4' >> /etc/hosts
sudo cp /tmp/hosts.bak /etc/hosts
sudo /usr/sbin/sshd -D
