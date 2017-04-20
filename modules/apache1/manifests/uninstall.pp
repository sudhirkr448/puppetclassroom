class apache1::uninstall inherits apache1::params{
# $pack_name = $facts['os']['family']?{
#     'RedHat' => 'httpd',
#     'Debian' => 'apache2',
# }
package { $apache1::params::pack_name:
    ensure => purged,
    
}