class apache1::file {
    $pack_name = $facts['os']['family']?{
    'RedHat' => 'httpd',
    'Debian' => 'apache2',
    }