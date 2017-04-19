class apache1::uninstall {
$pack_name = $facts['os']['family']?{
    'RedHat' => 'httpd',
    'Debian' => 'apache2',
}
package { $pack_name:
    ensure => purged,
    
}