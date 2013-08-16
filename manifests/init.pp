class fail2ban {
  $required = $operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'fail2ban',
  }

  package { $required: ensure => latest }

}

define fail2ban::service ( $ensure = running,
                           $enable = true ) {
  $service = $operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'fail2ban',
  }

  service { $service:
    ensure => $ensure,
    enable => $emable,
  }

}
