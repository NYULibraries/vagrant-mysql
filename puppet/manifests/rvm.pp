node default {
  Yumrepo <| |> -> Package <| provider != 'rpm' |>

  include epel
  include housekeeping::rvm
  class { '::rvm': }
  rvm::system_user { 'root': ; }
  rvm_system_ruby {
    'ruby-1.9.3-p551':
      ensure      => 'present',
      default_use => true,
  }
  rvm_gemset {
    'ruby-1.9.3-p551@aspace':
      ensure  => present,
      require => Rvm_system_ruby['ruby-1.9.3-p551'];
  }
  rvm_gem { 'bundler':
    ensure       => latest,
    name         => 'bundler',
    ruby_version => 'ruby-1.9.3-p551',
    require      => Rvm_system_ruby['ruby-1.9.3-p551'];
  }
  rvm_gem { 'r10k':
    ensure       => latest,
    name         => 'r10k',
    ruby_version => 'ruby-1.9.3-p551',
    require      => Rvm_system_ruby['ruby-1.9.3-p551'];
  }

}
