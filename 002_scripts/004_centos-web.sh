#!/bin/bash

# Apache
yum install -y httpd httpd-devel httpd-tools

chkconfig --add httpd
chkconfig httpd on
service httpd stop

rm -rf /var/www/html
ln -s /vagrant /var/www/html

service httpd start

# PHP
yum install -y php php-cli php-common php-devel php-mysql


# Download Started Content
cd /vagrant
yum install -y wget
sudo -u vagrant wget -q https://raw.githubusercontent.com/flodruid/vagrant/main/001_files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/flodruid/vagrant/main/001_files/info.php


service httpd restart

