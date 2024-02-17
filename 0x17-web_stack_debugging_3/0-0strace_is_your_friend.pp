exec { 'fix-apache':
  command => '/usr/bin/apt-get install -y missing-package',
  path    => ['/usr/bin', '/usr/sbin'],
}
