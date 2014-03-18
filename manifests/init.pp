class fail2ban (
  $ensure = 'latest'
){
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'fail2ban',
  }

  package { $required: ensure => $ensure }

}
