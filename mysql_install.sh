#!/bin/bash

# Function:Install mysql-5.6 for Centos
# Date: 2021-6-22
# Author: zdf

yum remove mariadb-libs
wget http://cdn.mysql.com/archives/mysql-5.6/MySQL-client-5.6.15-1.el6.x86_64.rpm
wget http://cdn.mysql.com/archives/mysql-5.6/MySQL-devel-5.6.15-1.el6.x86_64.rpm
wget http://cdn.mysql.com/archives/mysql-5.6/MySQL-server-5.6.15-1.el6.x86_64.rpm
rpm  -ivh MySQL-client-5.6.15-1.el6.x86_64.rpm
rpm -ivh MySQL-devel-5.6.15-1.el6.x86_64.rpm
rpm -ivh MySQL-server-5.6.15-1.el6.x86_64.rpm
systemctl enable mysql
systemctl start mysql
cp /usr/share/mysql/my-default.cnf /etc/
mv /etc/my-default.cnf /etc/my.cnf
echo "skip-grant-tables" >> /etc/my.cnf
systemctl restart mysql
mysql
