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
  
  ###############################################################################
###################################    manos02   ##############################
###############################################################################

# replace last 2 digits as appropriate

    config.vm.define "manos02" do | manos02 |
      manos02.vm.host_name            ="manos02.calavera.biz"
      manos02.vm.network              "private_network", ip: "192.168.33.41"
      manos02.vm.network              "forwarded_port", guest: 22, host: 2241, auto_correct: true
      manos02.vm.network              "forwarded_port", guest: 80, host: 8041
      manos02.vm.network              "forwarded_port", guest: 8080, host: 8141

      manos02.ssh.forward_agent        =true

      manos02.vm.synced_folder        ".",         "/home/manos02"
      manos02.vm.synced_folder        "./shared", "/mnt/shared"

      manos02.vm.provision :chef_zero do |chef|
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
###################################    nervios02     ##############################
###############################################################################
# monitoring

  config.vm.define "nervios02" do | nervios02 |
    nervios02.vm.host_name              ="nervios02.calavera.biz"
    nervios02.vm.network                 "private_network", ip: "192.168.33.51"
    nervios02.vm.network                 "forwarded_port", guest: 22, host: 2251, auto_correct: true
    nervios02.vm.network                 "forwarded_port", guest: 80, host: 8051
    nervios02.vm.network                 "forwarded_port", guest: 8080, host: 8151

    nervios02.ssh.forward_agent        =true

    nervios02.vm.synced_folder         ".", "/home/nervios02"
    nervios02.vm.synced_folder         "./shared", "/mnt/shared"


    nervios02.vm.provision :chef_zero do |chef|
      chef.cookbooks_path =       ["./cookbooks/"]
      #chef.add_recipe             "nervios::LAMP"
    end
    
    nervios02.vm.provision       :shell, path: "./cookbooks/nervios/files/tmpLAMP.sh"
    
  end
  
###############################################################################
###################################    manos03   ##############################
###############################################################################

# replace last 2 digits as appropriate

    config.vm.define "manos03" do | manos03 |
      manos03.vm.host_name            ="manos03.calavera.biz"
      manos03.vm.network              "private_network", ip: "192.168.33.41"
      manos03.vm.network              "forwarded_port", guest: 22, host: 2241, auto_correct: true
      manos03.vm.network              "forwarded_port", guest: 80, host: 8041
      manos03.vm.network              "forwarded_port", guest: 8080, host: 8141

      manos03.ssh.forward_agent        =true

      manos03.vm.synced_folder        ".",         "/home/manos03"
      manos03.vm.synced_folder        "./shared", "/mnt/shared"

      manos03.vm.provision :chef_zero do |chef|
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
###################################    nervios03     ##############################
###############################################################################
# monitoring

  config.vm.define "nervios03" do | nervios03 |
    nervios03.vm.host_name              ="nervios03.calavera.biz"
    nervios03.vm.network                 "private_network", ip: "192.168.33.51"
    nervios03.vm.network                 "forwarded_port", guest: 22, host: 2251, auto_correct: true
    nervios03.vm.network                 "forwarded_port", guest: 80, host: 8051
    nervios03.vm.network                 "forwarded_port", guest: 8080, host: 8151

    nervios03.ssh.forward_agent        =true

    nervios03.vm.synced_folder         ".", "/home/nervios03"
    nervios03.vm.synced_folder         "./shared", "/mnt/shared"


    nervios03.vm.provision :chef_zero do |chef|
      chef.cookbooks_path =       ["./cookbooks/"]
      #chef.add_recipe             "nervios::LAMP"
    end
    
    nervios03.vm.provision       :shell, path: "./cookbooks/nervios/files/tmpLAMP.sh"
    
  end
  
###############################################################################
###################################    manos04   ##############################
###############################################################################

# replace last 2 digits as appropriate

    config.vm.define "manos04" do | manos04 |
      manos04.vm.host_name            ="manos04.calavera.biz"
      manos04.vm.network              "private_network", ip: "192.168.33.41"
      manos04.vm.network              "forwarded_port", guest: 22, host: 2241, auto_correct: true
      manos04.vm.network              "forwarded_port", guest: 80, host: 8041
      manos04.vm.network              "forwarded_port", guest: 8080, host: 8141

      manos04.ssh.forward_agent        =true

      manos04.vm.synced_folder        ".",         "/home/manos04"
      manos04.vm.synced_folder        "./shared", "/mnt/shared"

      manos04.vm.provision :chef_zero do |chef|
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
###################################    nervios04     ##############################
###############################################################################
# monitoring

  config.vm.define "nervios04" do | nervios04 |
    nervios04.vm.host_name              ="nervios04.calavera.biz"
    nervios04.vm.network                 "private_network", ip: "192.168.33.51"
    nervios04.vm.network                 "forwarded_port", guest: 22, host: 2251, auto_correct: true
    nervios04.vm.network                 "forwarded_port", guest: 80, host: 8051
    nervios04.vm.network                 "forwarded_port", guest: 8080, host: 8151

    nervios04.ssh.forward_agent        =true

    nervios04.vm.synced_folder         ".", "/home/nervios04"
    nervios04.vm.synced_folder         "./shared", "/mnt/shared"


    nervios04.vm.provision :chef_zero do |chef|
      chef.cookbooks_path =       ["./cookbooks/"]
      #chef.add_recipe             "nervios::LAMP"
    end
    
    nervios04.vm.provision       :shell, path: "./cookbooks/nervios/files/tmpLAMP.sh"
    
  end
  
  
  
  
end
