# Class: apache::service
#
#
class apache::service {
     $package_name = $facts['os']['family']?{
    'RadHat' => 'httpd',
    'Debian' => 'apache2'
}
    service { "name":
        ensure     => running,
        enable     => true,
      #  hasrestart => true,
      #  hasstatus  => true,
        # pattern    => 'name',
    }
}