class apache::firewall {

  package { 'firewalld' : 
    ensure => 'present',
  }

  service { 'firewalld' :
    ensure     => 'running',
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
