# vagrant-mysql
This is a vagrant box running mysql.  To use it you'll need to clone the repository, change into the directory and run vagrant up and then ssh into the box.

    $ git clone https://github.com/NYULibraries/vagrant-mysql.git
    $ cd vagrant-mysql
    $ vagrant up
    $ vagrant ssh
  
  
vagrant ssh installs mysql with a username and password of vagrant/vagrant and a default database called vagrant.  It should be obvious, but if you're concerned with security you will need to change the root password, the user password and the mysql user password as these are ll set to "vagrant."
