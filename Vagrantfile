# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
    # vagrant-vbguest plugin
    if Vagrant.has_plugin?("vagrant-vbguest")
        config.vbguest.auto_update = true
    end

    config.vm.box = "alesl/vagrantWebDev"
    config.vm.box_version = "0.4.0"
    config.vm.box_check_update = true
    config.vm.box_download_insecure = true

    # Proxy Configuration Plugin for Vagrant
    if Vagrant.has_plugin?("vagrant-proxyconf")
      config.proxy.http     = "http://example.proxy.com:8080/"
      config.proxy.https    = "http://example.proxy.com:8080/"
      config.proxy.no_proxy = "localhost,127.0.0.1"
    end

    # vagrant-bindfs plugin
    if Vagrant.has_plugin?("vagrant-bindfs")
        config.vm.synced_folder ".", "/vagrant", type: "nfs", :mount_options => ["dmode=777","fmode=666"]
        config.bindfs.bind_folder "/vagrant", "/vagrant"
    else
        config.vm.synced_folder ".", "/vagrant", :mount_options => ["dmode=777","fmode=666"]
    end

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

    # Create a private network, which allows host-only access to the machine using a specific IP.
    config.vm.network :private_network, ip: "192.168.56.105"

    config.vm.provider "virtualbox" do |v|
        v.memory = 1024
        v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    end

    # provision
    config.vm.provision "shell", path: "shell-scripts/provision.sh", privileged: true
end
