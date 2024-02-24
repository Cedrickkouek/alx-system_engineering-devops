node '9665f0a47391' {
  exec { 'install_flask':
    command => 'pip3 install Flask==2.1.0',
    path    => '/usr/local/bin:/usr/bin:/bin',
    unless  => 'pip3 show Flask | grep  2.1.0',
  }
}
