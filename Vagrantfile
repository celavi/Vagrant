# -*- mode: ruby -*-
# vi: set ft=ruby :

# General project settings
#################################

  # IP Address for the host only network, change it to anything you like
  # but please keep it within the IPv4 private network range
  ip_address = "192.168.56.105"

  # The project name is base for directories, hostname and alike
  project_name = "webdev"

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
	# Try to prevent 'stdin is not a tty'
	config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
    
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

	# Disable the new default behavior introduced in Vagrant 1.7, to
    # ensure that all Vagrant machines will use the same SSH key pair.
    # See https://github.com/mitchellh/vagrant/issues/5005
    config.ssh.insert_key     = false
    # Enable agent forwarding over SSH connections
    config.ssh.forward_agent = true

	if Vagrant::Util::Platform.windows? then
		config.vm.synced_folder ".", "/vagrant", :mount_options => ["dmode=777","fmode=666"]
	else
		if Vagrant.has_plugin?("vagrant-bindfs")
		    config.vm.synced_folder ".", "/vagrant-nfs", id: "core", :nfs => true, :mount_options => ['nolock,vers=3,udp,noatime,actimeo=2,fsc']
            config.bindfs.bind_folder "/vagrant-nfs", "/vagrant", :perms => "og-x:og+rD:u=rwX:g+rw", :owner => 'vagrant', :group => 'vagrant'
		else
		    config.vm.synced_folder ".", "/vagrant", :mount_options => ["dmode=777","fmode=666"]
		end
	end
	
    # Port Forwarding for:
    ## NginX
    config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1", auto_correct: true
    ## MySQL
    config.vm.network "forwarded_port", guest: 3306, host: 3306, host_ip: "127.0.0.1", auto_correct: true
    ## MongoDB
    config.vm.network "forwarded_port", guest: 27017, host: 27017, host_ip: "127.0.0.1", auto_correct: true
    ## Redis
    config.vm.network "forwarded_port", guest: 6379, host: 6379, host_ip: "127.0.0.1", auto_correct: true
    ## Node
    config.vm.network "forwarded_port", guest: 3000, host: 3000, host_ip: "127.0.0.1", auto_correct: true

    # vagrant-hostmanager plugin
    if Vagrant.has_plugin?("vagrant-hostmanager")
		config.hostmanager.enabled = true
		config.hostmanager.manage_host = true
		config.vm.define project_name do |node|
		  node.vm.hostname = project_name + ".local"
		  node.vm.network :private_network, ip: ip_address
		  node.hostmanager.aliases = [ "www." + project_name + ".local" ]
		end
		config.vm.provision :hostmanager
    else
        # Create a private network, which allows host-only access to the machine using a specific IP.
        config.vm.network :private_network, ip: ip_address
    end

    config.vm.provider "virtualbox" do |v|
        v.memory = 1024
        v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    end

    # provision
    config.vm.provision "shell", path: "shell-scripts/provision.sh", privileged: true
end
