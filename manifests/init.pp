class puppet_ntp {
  ensure_packages (['ntp'])

  file  { '/etc/ntp.conf':
    source => 'puppet:///modules/puppet_ntp/ntp.conf',
    require => Package['ntp'],
    notify => Service['ntp'],
   }


   service { 'ntp':
     ensure => running,
   }
}