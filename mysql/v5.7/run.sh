#!/bin/bash

if [ ! -d /var/lib/mysql/mysql ]; then
  echo "=> An empty or uninitialized MySQL volume is detected in /var/lib/mysql"
  echo "=> Starting MySQL Database....."
  service mysql start
else
  echo "=> Using an existing volume of MySQL"
  echo "=> Starting MySQL Database....."
  service mysql start
fi

echo "=> Configuring user: $user with password: $password ....."

echo "DROP USER IF EXISTS '$user'@'%';
CREATE USER '$user'@'%' IDENTIFIED BY '$password';
GRANT ALL PRIVILEGES ON *.* TO '$user'@'%';
FLUSH PRIVILEGES;" | mysql

echo "=> User configured. Restarting MySQL...."
/usr/bin/mysqladmin -uroot shutdown
/usr/sbin/mysqld
