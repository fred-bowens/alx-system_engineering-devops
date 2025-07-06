# Ensure the Nginx package is installed
package { 'nginx':
  ensure => installed,
}

# Ensure the Nginx service is running and enabled on boot
service { 'nginx':
  ensure     => running,
  enable     => true,
  hasrestart => true,
  hasstatus  => true,
  require    => Package['nginx'],
}

# Create a custom index.html with "Hello World!"
file { '/var/www/html/index.html':
  ensure  => file,
  content => 'Hello World!',
  require => Package['nginx'],
}

# Modify Nginx default configuration to add a redirect
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => template('nginx/default_redirect.erb'),
  require => Package['nginx'],
  notify  => Service['nginx'],
  }
