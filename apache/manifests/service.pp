class apache::service {
  service { 'httpd':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }

  service { 'jbcs-httpd24-httpd':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    before     => 'httpd',
  }

} 
