# LAMP precursors for nervios

include_recipe "apache2::default"

mysql_service 'default' do
  port '3306'
  version '5.5'
  initial_root_password ''
  action [:create, :start]
end

#mysql_config 'default' do
#  #source 'mysite.cnf.erb'
#  notifies :restart, 'mysql_service[default]'
#  action :create
#end

execute 'LAMP additions' do
  command 'apt-get -y install build-essential libgd2-xpm-dev apache2-utils'
end
