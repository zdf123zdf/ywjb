#!/bin/bash

# Function:Install nginx-1.14.2 for Centos
# Date: 2021-6-20
# Author: zdf


yum -y install gcc openssl openssl-devel curl curl-devel libjpeg libjpeg-devel libpng libpng-devel freetype freetype-devel pcre pcre-devel libxslt libxslt-devel bzip2 bzip2-dev
wget https://repo.huaweicloud.com/nginx/nginx-1.14.2.tar.gz
tar -zxvf nginx-1.14.2.tar.gz
cd nginx-1.14.2
./configure --prefix=/opt/soft/nginx --sbin-path=/opt/soft/nginx/sbin/nginx --conf-path=/opt/soft/nginx/config/nginx.conf --error-log-path=/opt/soft/nginx/logs/error.log --pid-path=/opt/soft/nginx/logs/nginx.pid --http-log-path=/opt/soft/nginx/logs/access.log --with-http_stub_status_module --with-http_ssl_module
make && make install
cp /opt/soft/nginx/sbin/nginx /usr/local/bin/	#设置快捷访问方式
nginx -v
