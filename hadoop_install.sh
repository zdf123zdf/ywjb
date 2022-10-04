#!/bin/bash

# Function:Install for hadoop-2.6.5 Centos7(单机版)
# Date: 2021-6-23
# Author: zdf
# 请先安装java

cd /opt/
mkdir hadoop
wget https://repo.huaweicloud.com/apache/hadoop/common/hadoop-2.6.5/hadoop-2.6.5.tar.gz
tar -zxvf hadoop-2.6.5.tar.gz
cat >>/etc/profile<<EOF
export HADOOP_HOME=/opt/hadoop/hadoop-2.6.5
export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin
EOF
source  /etc/profile
cd hadoop-2.6.5
./bin/hadoop version

