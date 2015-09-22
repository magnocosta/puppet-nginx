# -*- mode: ruby -*-
# vi: set ft=ruby :

class nginx::install {

  # Update the packages apt
  exec { "apt-update-nginx":
    command => "/usr/bin/apt-get update",
  }

  package {["nginx"]:
    ensure  => installed,
    require => Exec["apt-update-nginx"]
  }

}
