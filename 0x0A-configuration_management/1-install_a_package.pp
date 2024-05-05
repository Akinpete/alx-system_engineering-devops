# 1-install_a_package.pp

# Ensure pip3 is installed
package { 'python3-pip':
  ensure => installed,
}

# Define a package resource for Flask, specifying the provider and version
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'],
}
