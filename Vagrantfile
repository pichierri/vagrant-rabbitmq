# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "vagrant-rabbitmq"
	config.vm.box = "ubuntu/xenial64"

	config.vm.provider "virtualbox" do |vb|
		vb.name = "vagrant-rabbitmq"
		vb.memory = "2024"
	end

  config.vm.network :forwarded_port, guest: 5672, host: 5672
	config.vm.network :forwarded_port, guest: 15672, host: 15672
  #config.vm.network :private_network, ip: "192.168.56.104"
	config.vm.provision :shell, path: "bootstrap.sh"
end
