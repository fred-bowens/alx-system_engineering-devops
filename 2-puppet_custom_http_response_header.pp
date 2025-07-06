# Ensure Nginx is installed
package { 'nginx':
  ensure => installed,
}

# Ensure the Nginx service is running and enabled
service { 'nginx':
  ensure     => running,
  enable     => true,
  hasstatus  => true,
  hasrestart => true,
  require    => Package['nginx'],
}

# Ensure the default Nginx index.html contains Hello World!
file { '/var/www/html/index.html':
  ensure  => file,
  content => "Hello World!\n",
  require => Package['nginx'],
}

# Add custom header to nginx.conf
exec { 'add_x_served_by_header':
  command => "sed -i '/http {/a\\    add_header X-Served-By \$myhostname;' /etc/nginx/nginx.conf",
  unless  => "grep -q 'add_header X-Served-By' /etc/nginx/nginx.conf",
  require => Package['nginx'],
  notify  => Service['nginx'],
}
