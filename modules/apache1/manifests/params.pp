# Class: apache1::params
#
#
class apache1::params {
    
        $pack_name = $facts['os']['family']?{
    'RedHat' => 'httpd',
    'Debian' => 'apache2',
}
}