# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "alesl/vagrantWebDev"
  config.vm.box_version = "0.2.1"
  config.vm.box_check_update = true
  config.vm.box_download_insecure = true

  config.ssh.private_key_path = "~/.ssh/id_rsa"
  config.ssh.forward_agent = true

  config.vm.synced_folder ".", "/vagrant", :mount_options => ["dmode=777","fmode=666"]

  # Port Forwarding for:
  ## NginX
  config.vm.network "forwarded_port", guest: 80, host: 8080, auto_correct: true
  ## MySQL
  config.vm.network "forwarded_port", guest: 3306, host: 3306, auto_correct: true
  ## MongoDB
  config.vm.network "forwarded_port", guest: 27017, host: 27017, auto_correct: true
  ## Redis
  config.vm.network "forwarded_port", guest: 6379, host: 6379, auto_correct: true
  ## Node
  config.vm.network "forwarded_port", guest: 3000, host: 3000, auto_correct: true

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network :private_network, ip: "192.168.33.100"

  # Allow more memory and fix this problem : http://askubuntu.com/questions/238040/how-do-i-fix-name-service-for-vagrant-client
  config.vm.provider "virtualbox" do |v|
    # v.gui = true
    v.memory = 1024
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

  # provision
  config.vm.provision "shell", path: "shell-scripts/provision.sh", privileged: true
end
