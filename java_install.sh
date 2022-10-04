#!/bin/bash

# Function:Install for jdk1.8.0_191 Centos
# Date: 2021-6-23
# Author: zdf

cd /opt/
wget https://repo.huaweicloud.com/java/jdk/8u191-b12/jdk-8u191-linux-x64.tar.gz
tar -zxvf jdk-8u191-linux-x64.tar.gz
mv /opt/jdk1.8.0_191 /usr/local/java
cat >>/etc/profile<<EOF
export JAVA_HOME=/usr/local/java
export PATH=$PATH:$JAVA_HOME/bin
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export JRE_HOME=$JAVA_HOME/jre
EOF
source  /etc/profile
rm -rf /usr/bin/java
rm -rf /usr/bin/javac
ln -s $JAVA_HOME/bin/java /usr/bin/java
ln -s $JAVA_HOME/bin/javac /usr/bin/javac
source /etc/profile
java -version