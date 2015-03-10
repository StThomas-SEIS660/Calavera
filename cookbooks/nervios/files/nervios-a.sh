#!/bin/bash

## run this command first: sudo useradd -m nagios && sudo passwd nagios      #INPUT
# then run this script

sudo groupadd nagcmd && sudo usermod -a -G nagcmd nagios && sudo usermod -a -G nagcmd www-data

cd /home/nagios

sudo wget http://prdownloads.sourceforge.net/sourceforge/nagios/nagios-4.0.8.tar.gz 

sudo tar xzf nagios-4.0.8.tar.gz && cd nagios-4.0.8

sudo ./configure --with-command-group=nagcmd && sudo make all
sudo make install && sudo make install-init && sudo make install-config && sudo make install-commandmode

#sudo make install-webconf

sudo /usr/bin/install -c -m 644 sample-config/httpd.conf /etc/apache2/sites-enabled/nagios.conf

# sudo ls -l /etc/apache2/sites-enabled/

