# Darkmantle Puppet: Laravel #

This is the Laravel module in my series of WebDev Puppet Configurations

## Dependencies
[LAMP by Darkmantle](https://forge.puppetlabs.com/darkmantle/lamp)


## Installation

Make sure you install the dependencies above!

### Puppet

`puppet module install darkmantle-laravel`

### Git Submodule

`git submodule add https://github.com/darkmantle/puppet-laravel.git modules/laravel`


## Usage
Create a manifest that has the following code:

```
Exec {
  path => ["/usr/bin", "/bin", "/usr/sbin", "/sbin", "/usr/local/bin", "/usr/local/sbin"]
}

include lamp
include laravel

exec {"apt-get update":
  command => "apt-get update"
}
```
