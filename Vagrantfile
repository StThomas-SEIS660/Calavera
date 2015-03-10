#Branch for Lab-06
# For each of 4 teams:
# Need to create standard Manos build without pushing out
# and a base LAMP install of nervios for students to install the rest
# need to fix VAGRANT_HOME issue as well

Vagrant.configure(2) do |config|
  config.vm.box = "opscode-ubuntu-14.04a"  # this box will not be on your machine to start
  config.berkshelf.enabled = true

###############################################################################
###################################    manos01   ##############################
###############################################################################

# replace last 2 digits as appropriate

    config.vm.define "manos01" do | manos01 |
      manos01.vm.host_name            ="manos01.calavera.biz"
      manos01.vm.network              "private_network", ip: "192.168.33.41"
      manos01.vm.network              "forwarded_port", guest: 22, host: 2241, auto_correct: true
      manos01.vm.network              "forwarded_port", guest: 80, host: 8041
      manos01.vm.network              "forwarded_port", guest: 8080, host: 8141

      manos01.ssh.forward_agent        =true

      manos01.vm.synced_folder        ".",         "/home/manos01"
      manos01.vm.synced_folder        "./shared", "/mnt/shared"

      manos01.vm.provision :chef_zero do |chef|
        chef.cookbooks_path         = ["./cookbooks/"]
        chef.add_recipe             "git::default"
        chef.add_recipe             "localAnt::default"
        chef.add_recipe             "java7::default"   # for some reason the Java recipe must be re-run to install Tomcat
        chef.add_recipe             "tomcat::default"
        chef.add_recipe             "shared::_junit"
        chef.add_recipe             "manos::solo"  # no remote git interaction
      end
    end

###############################################################################
###################################    nervios01     ##############################
###############################################################################
# monitoring

  config.vm.define "nervios01" do | nervios01 |
    nervios01.vm.host_name              ="nervios01.calavera.biz"
    nervios01.vm.network                 "private_network", ip: "192.168.33.51"
    nervios01.vm.network                 "forwarded_port", guest: 22, host: 2251, auto_correct: true
    nervios01.vm.network                 "forwarded_port", guest: 80, host: 8051
    nervios01.vm.network                 "forwarded_port", guest: 8080, host: 8151

    nervios01.ssh.forward_agent        =true

    nervios01.vm.synced_folder         ".", "/home/nervios01"
    nervios01.vm.synced_folder         "./shared", "/mnt/shared"


    nervios01.vm.provision :chef_zero do |chef|
      chef.cookbooks_path =       ["./cookbooks/"]
      #chef.add_recipe             "nervios::LAMP"
    end
    
    nervios01.vm.provision       :shell, path: "./cookbooks/nervios/files/tmpLAMP.sh"
    
  end
end
