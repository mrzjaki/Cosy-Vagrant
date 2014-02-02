# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

require File.join(File.dirname(__FILE__), 'vagrant-shell-scripts/vagrant')

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  # ===============================
  # Networking                    
  # ===============================

  config.vm.network :private_network, ip: "10.11.12.13"
  config.ssh.forward_agent = true

  # ===============================
  # Shared Folder                 
  # ===============================

  #HOST_PROJECT_PATH = "./workspace"
  #GUEST_PROJECT_PATH = "/home/vagrant/workspace/"

  config.vm.synced_folder ".", "/vagrant", type: "nfs"
  #config.vm.synced_folder HOST_PROJECT_PATH, GUEST_PROJECT_PATH, type: "nfs"

  # ===============================
  # Provider (VirtualBox)
  # ===============================
  
  config.vm.provider :virtualbox do |vb|
  #   # Don't boot with headless mode
  #   vb.gui = true
  #
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
  end
  
  # ===============================
  # Provision
  # ===============================

  config.vm.provision :shell do |shell|
    vagrant_shell_scripts_configure(
        shell,
        File.dirname(__FILE__),
        'provision.sh'
    )
  end
end
