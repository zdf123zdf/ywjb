#!/bin/bash

# Function:Install for hbase-2.2.3 Centos7(单机版)
# Date: 2021-6-23
# Author: zdf
# 请先安装java与zookeeper

cd /opt/
mkdir hbase
cd hbase
wget https://repo.huaweicloud.com/apache/hbase/2.2.3/hbase-2.2.3-bin.tar.gz
tar -zxvf hbase-2.2.3-bin.tar.gz
cd hbase-2.2.3/conf/
sed -i '28a export JAVA_HOME=/usr/local/java' hbase-env.sh
sed -i '127a export HBASE_MANAGES_ZK=false' hbase-env.sh 
cat >>hbse-site.xml<<EOF
<configuration>
<property>
                <name>hbase.rootdir</name>
                <value>file:///opt/hbase/hbase-2.2.3/root</value>
        </property>
        <property>
                <name>hbase.tmp.dir</name>
                <value>file:///opt/hbase/hbase-2.2.3/tmp</value>
        </property>
        <property>
                <name>hbase.zookeeper.quorum</name>
                <value>127.0.0.1</value>
        </property>
        <property>
               <name>hbase.zookeeper.property.dataDir</name>
               <value>file:///opt/hbase/hbase-2.2.3/data</value>
        </property>
<!-- 这里必须设置为true，不然会使用自带zk,若启动外部zookeeper会导致冲突 -->
        <property>
                <name>hbase.cluster.distributed</name>
                <value>true</value>
        </property>
</configuration>
EOF
cd /opt/hbase/hbase-2.2.3/bin
./start-hbase.sh
ps -ef|grep hbase
