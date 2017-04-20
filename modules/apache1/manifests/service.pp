# Class: apache1::service
#
#
class apache1::service inherits apache1::params {
    # $pack_name = $facts['os']['family']?{
    # 'RedHat' => 'httpd',
    # 'Debian' => 'apache2',
    # }
    
    service { $apache1::params::pack_name
        ensure     => running,
        enable     => true,
     
    }
}