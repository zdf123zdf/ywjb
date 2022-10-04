#!/bin/bash

# Function:Install for go1.16.5.l Centos
# Date: 2021-6-22
# Author: zdf

cd /opt/
wget https://studygolang.com/dl/golang/go1.16.5.linux-amd64.tar.gz
tar zxvf go1.16.5.linux-amd64.tar.gz
mkdir -p /opt/gopath/bin
mkdir -p /opt/gopath/src
cat >>/etc/profile<<EOF
export GOROOT=/opt/go
export GOPATH=/opt/gopath
export PATH=\$PATH:/opt/gopath/bin:/opt/go/bin
EOF
source  /etc/profile
go version
