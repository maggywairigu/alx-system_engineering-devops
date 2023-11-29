# File: 7-puppet_install_nginx_web_server.pp

# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Configure Nginx
file { '/etc/nginx/sites-available/default':
  ensure => file,
  content => template('nginx/default.erb'),
  notify => Service['nginx'],
}

file { '/etc/nginx/sites-enabled/default':
  ensure => link,
  target => '/etc/nginx/sites-available/default',
}

# Create a custom 404 page
file { '/var/www/html/custom_404.html':
  ensure => file,
  content => "Ceci n'est pas une page\n",
}

# Configure the 301 redirect
file { '/etc/nginx/sites-available/redirect_me':
  ensure => file,
  content => template('nginx/redirect_me.erb'),
  notify => Service['nginx'],
}

file { '/etc/nginx/sites-enabled/redirect_me':
  ensure => link,
  target => '/etc/nginx/sites-available/redirect_me',
}

# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure => running,
  enable => true,
}

