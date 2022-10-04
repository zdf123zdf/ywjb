#!/bin/bash

# Function:Install PHP7.3.2 for Centos
# Date: 2021-6-20
# Author: zdf

yum -y install gcc openssl openssl-devel curl curl-devel libjpeg libjpeg-devel libpng libpng-devel freetype freetype-devel pcre pcre-devel libxslt libxslt-devel bzip2 bzip2-devel
wget http://am1.php.net/distributions/php-7.3.2.tar.gz    
tar -zxvf php-7.3.2.tar.gz  
cd php-7.3.2
./configure --prefix=/opt/soft/php --enable-fpm
./configure --prefix=/opt/soft/php  --with-curl --with-mysqli --with-openssl --with-pdo-mysql --enable-fpm
make && make install
cp /opt/soft/php/bin/php /usr/local/bin/		# 设置快捷访问方式
cp php.ini-production /opt/soft/php/lib/php.ini		# 移动php配置文件
cp /opt/soft/php/etc/php-fpm.conf.default /opt/soft/php/etc/php-fpm.conf	# 配置php-fpm.conf
cp /opt/soft/php/etc/php-fpm.d/www.conf.default /opt/soft/php/etc/php-fpm.d/www.conf	# 配置www.conf
php -v