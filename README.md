# vagrant-mysql
Install a Virtualbox guest running mysql.

## Before you start

The easiest way to get vagrant-mysql up and running is to have homebrew installed.  If you need to install homebrew you can find instructions [an example](http://brew.sh/ "Title) inline link

ysql you'll need Virtualbox, vagrant and the vagrant-r10ksiest way to do this is if yo h plugin installed.  Assuming you have homebrew installed you can install Virtualbox, vagrnat and vagrant-r10k like this.

    $

To use it you'll need to clone the repository, change into the directory and run vagrant up and then ssh into the box.

    $ git clone https://github.com/NYULibraries/vagrant-mysql.git
    $ cd vagrant-mysql
    $ vagrant up
    $ vagrant ssh
  
  
vagrant ssh installs mysql with a username and password of vagrant/vagrant and a default database called vagrant.  It should be obvious, but if you're concerned with security you will need to change the root password, the user password and the mysql user password as these are ll set to "vagrant."
