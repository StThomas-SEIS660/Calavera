## Run this script on the client (the node to be monitored) NOT on the nervios/nagios server

sudo apt-get -y install nagios-nrpe-server nagios-plugins

## Find the following line and add the Nagios server IP ##

cd /etc/nagios/ && sed --in-place='.bak' 's/allowed_hosts=127.0.0.1/allowed_hosts=127.0.0.1 192.168.33.51/' nrpe.cfg 
