#!/bin/bash

# Function:Install for node-v16.3.0 Centos
# Date: 2021-6-23
# Author: zdf

cd /opt/
wget https://npm.taobao.org/mirrors/node/v16.3.0/node-v16.3.0-linux-x64.tar.xz
tar xf node-v16.3.0-linux-x64.tar.xz
cd node-v16.3.0-linux-x64
cat >>/etc/profile<<EOF
export PATH=$PATH:/opt/node-v16.3.0-linux-x64/bin
EOF
source  /etc/profile
node -v
