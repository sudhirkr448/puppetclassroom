# Class: apache1$pack_name = 
#
class apache1::install inherits apache1::params 
{
#     $pack_name = $facts['os']['family']?{
#     'RedHat' => 'httpd',
#     'Debian' => 'apache2',
# }
package { $apach1::params::pack_name:
    ensure => installed,
    
}

}