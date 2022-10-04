#!/bin/bash

# Function:Install Python3.8.1 for Centos
# Date: 2021-6-20
# Author: zdf

yum install -y zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel
readline-devel tk-devel gcc* make -y
yum install libffi-devel -y
wget https://repo.huaweicloud.com/python/3.8.1/Python-3.8.1.tgz
tar -zxvf Python-3.8.1.tgz
cd Python-3.8.1
./configure prefix=/usr/local/python3
make && make install
ln -s /usr/local/python3/bin/python3 /usr/bin/python3
ln -s /usr/local/python3/bin/pip3 /usr/bin/pip3
mkdir ~/.pip
touch ~/.pip/pip.conf
cat>~/.pip/pip.conf<<EOF  	#更换pip国内源
[global]
index-url=http://mirrors.aliyun.com/pypi/simple

[install]
trusted-host=mirrors.aliyun.com
EOF
python3 --version
