# Class: apache1::service
#
#
class apache1::service {
    $pack_name = $facts['os']['family']?{
    'RedHat' => 'httpd',
    'Debian' => 'apache2',
    }
    service { $pack_name:
        ensure     => running,
        enable     => true,
     
    }
}