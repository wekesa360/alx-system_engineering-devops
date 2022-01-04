# using Puppet to make changes to uor configuration file
# so that we can connect to a server ithout typing a password

include stdlib
file_line { 'Declare identity file':
  path => '/etc/ssh/ssh_config',
  line => '  IdentityFile ~/.ssh/holberton',
  replace => true
}

file_line { 'Turn off passed auth':
  path => '/etc/ssh/ssh_config',
  line => '   PasswordAuthentication no',
  replace => true
}
