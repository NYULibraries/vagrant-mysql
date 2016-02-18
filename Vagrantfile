# -*- mode: ruby -*-
# vi: set ft=ruby :
#

Vagrant.configure(2) do |config|
  #
  # Disable insecure key replacement
  #config.ssh.insert_key = false
  # Use your id_rsa key from ~/.ssh
  config.ssh.private_key_path = [ '~/.vagrant.d/insecure_private_key', '~/.ssh/id_rsa' ]
  config.vm.box = "flannon/centos_6.7_min"
  config.vm.provider "virtualbox" do |vb|
    #vb.gui = true
    #vb.memory = "2048"
  end
  #config.vm.network "private_network", ip: "192.168.50.4"
  config.vm.network "forwarded_port", guest:  3306, host: 3406
  config.vm.hostname = "mysql.local"
  config.vm.provision "shell", path: "bin/init-puppet-centos6.sh"
  config.vm.provision "shell", path: "bin/load-mpapis-sig.sh"

  config.r10k.puppet_dir = "puppet"
  config.r10k.puppetfile_path = "puppet/Puppetfile"
  config.r10k.module_path = "puppet/modules"

  config.vm.provision "puppet" do |puppet|
      #puppet.module_path = [ 'puppet/modules', 'puppet/modules-local' ]
      #puppet.module_path = [ 'puppet/modules' ]
      puppet.hiera_config_path = "hiera.yaml"
      puppet.working_directory = "/tmp/vagrant-puppet"
      puppet.manifests_path = "puppet/manifests"
      puppet.manifest_file = "default.pp"
      puppet.module_path = ["puppet/modules", "puppet/modules-local", "puppet/sites"]
  end
  ###config.vm.provision "shell", path: "bin/update-git.sh"

end
