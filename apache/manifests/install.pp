class apache::install() {
  
  package { 'jbcs-httpd24':
    ensure => 'present',
    user   => 'root',
  }

  package { 'httpd':'
    ensure => 'present',
    user   => 'root',
    after  => 'jbcs-httpd24',
  }
}
