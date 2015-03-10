#then on server:
# sudo nano /usr/local/nagios/etc/nagios.cfg

## Find and uncomment the following line ##
#cfg_dir=/usr/local/nagios/etc/servers

cp clients.cfg /usr/local/nagios/etc/servers/clients.cfg

cd /usr/local/nagios/etc/ && sed --in-place='.bak' 's/#cfg_dir\(.*\)servers/cfg_dir\1servers/' nagios.cfg

#create file:
#sudo nano /usr/local/nagios/etc/servers/clients.cfg
# (copy from shared)

mkdir /usr/local/nagios/etc/servers

ln -fs /etc/init.d/nagios /etc/rcS.d/S99nagios
service nagios restart
