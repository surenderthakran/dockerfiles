#!/bin/bash

echo "Refreshing MySQL data directory /var/lib/mysql/"
rm -rf /var/lib/mysql
mkdir -p /var/lib/mysql

echo "Managing permissions for /var/lib/mysql/"
adduser mysql
chown mysql /var/lib/mysql
chgrp mysql /var/lib/mysql

echo "Fetching and adding MySQL repo information...."
cd
wget http://dev.mysql.com/get/mysql-apt-config_0.7.2-1_all.deb
dpkg -i mysql-apt-config_0.7.2-1_all.deb

echo "Installing MySQL...."
apt-get update
apt-get -y install mysql-server

echo "Configuring MySQL....."
# this allows mysql server to listen on all network interfaces so as to connect to it from outside the container
sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

echo "Removing unwanted packages..."
apt-get autoremove
