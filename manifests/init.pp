# Class: laravel
#
# This module manages laravel
#
# Parameters: none
#
# Actions:
#
# Requires: see metadata.json
#
# Sample Usage:
#
class laravel {
  # empty webroot
  file { '/vagrant/webroot':
    ensure  => directory,
    recurse => true,
    purge   => true,
    force   => true
  }

  # create new project
  exec { 'create_project':
    command => 'composer create-project laravel/laravel --prefer-dist .',
    cwd     => '/srv/site',
    onlyif  => 'test -f /usr/bin/composer',
    require => [File['/vagrant/webroot'], Package['php5-mcrypt'], Package['apache2'],Package['php5'],Package['php5-mysql'],Package['mysql-server']]
  }
}
