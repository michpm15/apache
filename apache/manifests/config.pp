class apache::config {
  exec { 'port_80':
    command => 'sudo firewall-cmd --permanent --add-port=80/tcp',
    user    => 'root',
    before  => Exec{'port_443':},
  }
  exec { 'port_443':
    command => 'sudo firewall-cmd --permanent --add-port=443/tcp',
    user    => 'root',
    before  => Exec{'reload':},
  }
  exec { 'port_443':
    command => 'sudo firewall-cmd --reload',
    user    => 'root',
  }


}

