FROM flat2010:spark-base
MAINTAINER flat2010 <>  
  
ENV REFRESHED_AT 2017-08-07  

#========================================================
#
# zookeeper configs
#
#========================================================
ADD tgzfiles/zookeeper-3.4.10.tar.gz /usr/local/
RUN sudo chown -R hadoop:hadoop /usr/local/zookeeper-3.4.10
ENV ZOOKEEPER_HOME /usr/local/zookeeper-3.4.10
ENV PATH $PATH:$ZOOKEEPER_HOME/bin:$ZOOKEEPER_HOME/conf
COPY copyfiles/zoo.cfg /usr/local/zookeeper-3.4.10/conf/
COPY copyfiles/initial_zookeeper.sh /home/hadoop/
RUN cd /usr/local/zookeeper-3.4.10/ && mkdir -p var/data  && touch myid

#========================================================
#
# hbase configs
#
#========================================================
ADD tgzfiles/hbase-1.2.6-bin.tar.gz /usr/local/
RUN sudo chown -R hadoop:hadoop /usr/local/hbase-1.2.6
ENV HBASE_HOME /usr/local/hbase-1.2.6
ENV PATH $PATH:$HBASE_HOME/bin
COPY copyfiles/hbase-env.sh /usr/local/hbase-1.2.6/conf/
COPY copyfiles/hbase-site.xml /usr/local/hbase-1.2.6/conf/
COPY copyfiles/regionservers /usr/local/hbase-1.2.6/conf/

#========================================================
#
# hadoop configs
#
#========================================================
ADD addfiles/hadoop-env.sh $HADOOP_HOME/etc/hadoop/  
ADD addfiles/mapred-env.sh $HADOOP_HOME/etc/hadoop/  
ADD addfiles/yarn-env.sh $HADOOP_HOME/etc/hadoop/  
ADD addfiles/core-site.xml $HADOOP_HOME/etc/hadoop/  
ADD addfiles/hdfs-site.xml $HADOOP_HOME/etc/hadoop/  
ADD addfiles/mapred-site.xml $HADOOP_HOME/etc/hadoop/  
ADD addfiles/yarn-site.xml $HADOOP_HOME/etc/hadoop/  
ADD addfiles/slaves $HADOOP_HOME/etc/hadoop/  
  
RUN sudo chown -R hadoop:hadoop $HADOOP_HOME/etc/hadoop  
RUN sudo mkdir -p /home/hadoop/hadoop_datas
  
#RUN cd /opt && sudo mkdir hadoop && cd hadoop && sudo mkdir data  
RUN sudo chown -R hadoop:hadoop /home/hadoop/hadoop_datas
  
WORKDIR /home/hadoop  
  
COPY copyfiles/master_bootstrap.sh /home/hadoop/  
COPY copyfiles/hosts.bak /tmp/

COPY copyfiles/ssh_config /etc/ssh/ssh_config

COPY copyfiles/format_hadoop.sh /home/hadoop/
COPY copyfiles/setenv_hadoop.sh /home/hadoop/


RUN sudo chmod 766 /home/hadoop/master_bootstrap.sh  

# add this to no connect prompt of ssh
#RUN sudo echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config
#RUN sudo echo "UserKnownHostsFile=/dev/null" >> /etc/ssh/ssh_config

#========================================================
#
# spark configs
#
#========================================================
# scala configs
ADD tgzfiles/scala-2.11.7.tgz /usr/local
RUN sudo chown -R hadoop:hadoop /usr/local/scala-2.11.7
ENV SCALA_HOME /usr/local/scala-2.11.7
ENV PATH $PATH:$SCALA_HOME/bin

# spark configs
ADD tgzfiles/spark-2.1.0-bin-hadoop2.6.tgz /usr/local
RUN sudo chown -R hadoop:hadoop /usr/local/spark-2.1.0-bin-hadoop2.6
ENV SPARK_HOME /usr/local/spark-2.1.0-bin-hadoop2.6
ENV PATH $PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin
ADD addfiles/spark-env.sh /usr/local/spark-2.1.0-bin-hadoop2.6/conf/
ADD addfiles/slaves /usr/local/spark-2.1.0-bin-hadoop2.6/conf/
ADD addfiles/spark-defaults.conf /usr/local/spark-2.1.0-bin-hadoop2.6/conf/
COPY copyfiles/initial_spark.sh /home/hadoop
RUN sudo mkdir -p /home/hadoop/spark_datas/spark_events
RUN sudo chown -R hadoop:hadoop /home/hadoop

ENTRYPOINT ["/home/hadoop/master_bootstrap.sh"] 
