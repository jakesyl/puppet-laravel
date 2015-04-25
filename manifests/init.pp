# Class: laravel
#
# This module manages laravel
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class laravel {
  
  # empty webroot
  file {"/vagrant/webroot":
    ensure => directory,
    recurse => true,
    purge => true,
    force => true
  }
  # create new project
  exec {"create_project":
    command => "composer create-project laravel/laravel --prefer-dist .",
    cwd => "/vagrant/webroot",
    onlyif => "test -f /usr/bin/composer",
    require => [File["/vagrant/webroot"],Package["php5-mcrypt"]]
  }
}
