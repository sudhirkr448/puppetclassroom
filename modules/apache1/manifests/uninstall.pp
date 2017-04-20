class apache1::uninstall inherits apache1::params{

package { $apache1::params::pack_name:
    ensure => purged,
    
}