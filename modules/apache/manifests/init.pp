# Class: apache
# ===========================
#
# Full description of class apache here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'apache':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#
class apache {
$package_name = $facts['os']['family']?{
    'RadHat' => 'httpd',
    'Debian' => 'apache2',
}
package { $package_name:
    ensure => installed,
    
}
    service { $package_name:
       ensure     => running,
       enable     => true,
#       hasrestart => true,
#       hasstatus  => true,
       # pattern    => 'name',
}


}
