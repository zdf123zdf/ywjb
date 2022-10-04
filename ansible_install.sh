#!/bin/bash

# Function:Install for ansible Centos7
# Date: 2021-6-22
# Author: zdf

rpm -Uvh http://mirrors.ustc.edu.cn/epel/epel-release-latest-7.noarch.rpm
yum install epel-release -y
yum install ansible	-y
ansible --version
