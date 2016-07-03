file { "/home/vagrant/test.txt":
  ensure  => present,
  content => 'hello',
}
