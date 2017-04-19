# Class: apache::homepage
#
#
class apache::homepage {
    file { '/var/www/index.html':
        ensure => file,
      #  source => 'puppet:///modules/class/file.txt';
        content => file('apache/index.html')
    }
    $package_name = $facts['os']['family']?{
    'RadHat' => 'httpd',
    'Debian' => 'apache2',
    }
    service { "test":
        
        ensure     => $package_name,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        restart =>,
        # pattern    => 'test',
    }
}