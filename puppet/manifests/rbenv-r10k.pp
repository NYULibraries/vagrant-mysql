node default {

  include housekeeping::rbenv
  class { 'rbenv': }
  rbenv::plugin { [ 'sstephenson/rbenv-vars', 'sstephenson/ruby-build' ]: }
  #rbenv::build { '2.1.3': global => true }
  rbenv::build { '1.9.3-p551': global => true }
  rbenv::gem { 'puppet': ruby_version => '1.9.3-p551' }
  rbenv::gem { 'r10k': ruby_version => '1.9.3-p551' }

  file { "/etc/profile.d/rvm.sh":
    ensure => absent,
    purge => true,
    force => true,
  }

}

