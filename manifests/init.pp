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
  exec {"empty_webroot":
    command => "cd /vagrant/webroot && sudo rm -rf *"
  }
  
  # create new project
  exec {"create_project":
    command => "cd /vagrant/webrot && composer create-project laravel/laravel . ",
    onlyif => "test -f /usr/bin/composer",
    require => Exec["empty_webroot"]
  }
}
