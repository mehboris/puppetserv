package {'git':
  ensure => installed
}

group { 'git': gid => 1111, }
user {'git':
  uid     => 1111,
  gid     => 1111,
  comment => 'Git User',
  home    => '/home/git',
  password => '$1$yO7rXv5G$aKZPCuL27mUogBHel1Aad1',
  require => Group['git'],

}
file {'/home/git':
  ensure  => 'directory',
  owner   => 1111,
  group   => 1111,
  require => User['git'],
}


file {'/home/git/repos':
  ensure  => 'directory',
  owner   => 1111,
  group   => 1111,
  require => User['git'],
}

file {'/home/git/repos/puppetstart.git':
  ensure  => 'directory',
  owner   => 1111,
  group   => 1111,
  require => User['git'],
}

exec { 'create-main-git-rep':
 cwd => '/home/git/repos/puppetstart.git/',
 command => '/usr/bin/git init --bare ',
 creates => '/home/git/repos/puppetstart.git/HEAD',
}
