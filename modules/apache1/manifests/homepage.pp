# Class: apache1::homepage
#
#
class apache1::homepage inherits apache1::params {
    # resources
    file { '/var/www/index.html':
        ensure => file,
     content => file('apache1/index.html')
    }
service { "httpd restart":
    name       => $apache1::params::pack_name ,
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    restart    => "",
    # pattern    => 'name',
}


}