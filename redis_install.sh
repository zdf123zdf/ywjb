#!/bin/bash

# Function:Install redis6.0.7 for Centos
# Date: 2021-6-22
# Author: zdf

yum install gcc -y
wget https://repo.huaweicloud.com/redis/redis-6.0.7.tar.gz
tar -zvxf redis-6.0.7.tar.gz
mv redis-6.0.7 /usr/local/redis
cd /usr/local/redis
make
make PREFIX=/usr/local/redis install
./bin/redis-server& ./redis.conf
ps -aux | grep redis
