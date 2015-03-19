#!/bin/bash

 apt-get update --fix-missing
 apt-get -y install apache2
 debconf-set-selections <<< 'mysql-server mysql-server/root_password password  '
 debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password  '
 apt-get -y install mysql-server
 apt-get -y install mysql-server mysql-client
 apt-get -y install php5 php5-mysql libapache2-mod-php5
# apt-get -y install phpmyadmin

 /etc/init.d/apache2 restart

 apt-get -y install build-essential libgd2-xpm-dev apache2-utils