# -*- mode: ruby -*-
# vi: set ft=ruby :

#
# v_bootstrap.sh
#
# jorgedlt@gmail.com - 2016-07-22 12:50:19

Vagrant.configure(2) do |config|
    config.vm.box = "boxcutter/ubuntu1510"

      # Provisioning & Start-Up
       config.vm.provision :shell, path: "v_bootstrap.sh"
       config.vm.provision :shell, path: "v_startup.sh", run: "always", privileged: false

       # Private Network
       # config.vm.network "private_network", ip: "192.168.17.37"

       # Expose Ports
       # config.vm.network :forwarded_port, host: 7080, guest: 80
       # config.vm.network :forwarded_port, host: 8080, guest: 8080

        config.vm.provider :virtualbox do |vb|
          vb.memory = "2048"
          vb.cpus = "2"
    end
end
