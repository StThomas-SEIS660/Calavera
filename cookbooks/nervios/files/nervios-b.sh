#!/bin/bash
## after nervios-a.sh
## execute next line and then run this script. 
## sudo htpasswd -c /usr/local/nagios/etc/htpasswd.users nagiosadmin  #INPUT

sudo service apache2 restart

cd /home/nagios && sudo wget http://nagios-plugins.org/download/nagios-plugins-2.0.3.tar.gz
sudo tar xzf nagios-plugins-2.0.3.tar.gz && cd nagios-plugins-2.0.3
sudo ./configure --with-nagios-user=nagios --with-nagios-group=nagios
sudo make && sudo make install

#sudo nano /usr/local/nagios/etc/objects/contacts.cfg
#sudo nano /etc/apache2/sites-enabled/nagios.conf

sudo a2enmod rewrite && sudo a2enmod cgi

sudo service apache2 restart && sudo service nagios start
sudo ln -s /etc/init.d/nagios /etc/rcS.d/S99nagios



