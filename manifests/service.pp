define fail2ban::service (
  $ensure = running,
  $enable = true
) {
  $service = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'fail2ban',
  }

  $depends = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'fail2ban',
  }

  service { $service:
    ensure  => $ensure,
    enable  => $enable,
    require => Package[$depends],
  }

}
