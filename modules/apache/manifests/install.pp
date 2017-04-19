class apache::install {
   $package_name = $facts['os']['family']?{
    'RadHat' => 'httpd',
    'Debian' => 'apache2'
}
package {
    package { $package_name:
    ensure => installed,
    }
}