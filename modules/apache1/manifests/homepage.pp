# Class: apache1::homepage
#
#
class apache1::homepage inherits apache1::params {
    # resources
    file { '/var/www/index.html':
        ensure => file,
     #   owner  => owner,
     #   group  => group,
     #   mode   => mode,
     #   source => 'puppet:///modules/class/file.txt';
     content => file('apache1/index.html')
    }
#   $pack_name = $facts['os']['family']?{
#     'RedHat' => 'httpd',
#     'Debian' => 'apache2',
# }

    service { $apache1::params::pack_name:
       # name       => ,
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        restart  =>,
        # pattern    => 'name',
    }
}