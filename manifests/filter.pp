define fail2ban::filter (
  $failregexes,
  $ensure    = present,
  $ignoreregexes = [],
  $additional_defs = []
) {
  include fail2ban::config

  file { "/etc/fail2ban/filter.d/${name}.conf":
    ensure  => $ensure,
    content => template('fail2ban/filter.erb'),
    owner   => 'root',
    group   => 0,
    mode    => '0644',
  }

}
