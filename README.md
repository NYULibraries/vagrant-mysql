# vagrant-mysql
Install a Virtualbox guest running mysql.

#### Before you start

The easiest way to get vagrant-mysql up and running is to have homebrew installed.  If you need to install homebrew you can find instructions [here](http://brew.sh/ "brew.sh"). 

####  Installation

You'll need Virtualbox, vagrant and the vagrant-r10k plugin installed in order to run vagrant-mysql. If homebrew is set up you can install all three like this,

    $ brew cask install virtualbox
    $ brew cask install vagrant
    $ vagrant plugin install vagrant-r10k

Now you just need to download the repo and "vagrant up" for your guest to be running.

    $ git clone https://github.com/NYULibraries/vagrant-mysql.git
    $ cd vagrant-mysql
    $ vagrant up
    $ vagrant ssh
  
##### Mysql
Mysql is configured with a username and password of vagrant/vagrant and a default database called vagrant. After you log in you should change the mysql vagrant user's password.  Your guest has iptables running and port 3306 is open. In the vagrant setup port 3306 on the guest is forwarded to port 3406 on your host, so you'll be able to connect to mysql on the guest by going to 127.0.0.1:3406 from your host. 

#####Shared folder
The vagrant-mysql directory is shared with /vagrant on the guest.  you can see this by going to /vagrant on the guest once you've logged in.

    $ vagrant ssh
    $ cd /vagrant
