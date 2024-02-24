#!/usr/bin/pup
# Install an especific version of flask (2.1.0)
exec { 'install_flask_2.1.0':
  command => 'pip3 install Flask==2.1.0',
  path    => '/usr/local/bin:/usr/bin:/bin',
  unless  => 'pip3 show Flask | grep  2.1.0',
}
