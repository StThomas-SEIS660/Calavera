#then on server:
# sudo nano /usr/local/nagios/etc/nagios.cfg

## Find and uncomment the following line ##
#cfg_dir=/usr/local/nagios/etc/servers

cd /usr/local/nagios/etc/ && sed --in-place='.bak' 's/#cfg_dir\(.*\)servers/cfg_dir\1servers/' nagios.cfg

#create file:
#sudo nano /usr/local/nagios/etc/servers/clients.cfg
# (copy from shared)

mkdir /usr/local/nagios/etc/servers
cp /mnt/shared/clients.cfg /usr/local/nagios/etc/servers/clients.cfg
sudo service nagios restart
