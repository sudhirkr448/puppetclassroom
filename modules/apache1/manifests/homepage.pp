# Class: apache1::homepage
#
#
class apache1::homepage {
    # resources
    file { '/var/www/index.html':
        ensure => file,
     #   owner  => owner,
     #   group  => group,
     #   mode   => mode,
     #   source => 'puppet:///modules/class/file.txt';
     content => file('apache1/index.html')
    }
  $pack_name = $facts['os']['family']?{
    'RedHat' => 'httpd',
    'Debian' => 'apache2',
}

    service { "test":
        name       => $pack_name,
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        restart  =>,
        # pattern    => 'name',
    }
}