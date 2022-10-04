#!/bin/bash

# Function:Install for zookeeper-3.5.9 Centos7
# Date: 2021-6-23
# Author: zdf

cd /opt/
wget http://mirrors.hust.edu.cn/apache/zookeeper/zookeeper-3.5.9/apache-zookeeper-3.5.9.tar.gz
tar -zxvf apache-zookeeper-3.5.9.tar.gz
cd apache-zookeeper-3.5.9/conf
cp zoo_sample.cfg zoo.cfg
cat >>zoo.cfg<<EOF
admin.serverPort=2190
EOF
cat >>/etc/profile<<EOF
export ZOOKEEPER_HOME=/opt/apache-zookeeper-3.5.9
export PATH=$PATH:$ZOOKEEPER_HOME/bin 
EOF
source  /etc/profile
cd /opt/apache-zookeeper-3.5.9/bin
./zkServer.sh start
ps -ef|grep zookeeper
