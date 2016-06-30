server 'localhost', user: 'vagrant', roles: %w{app db web}
set :ssh_options, {
  forward_agent: true,
  keys: %w(~/code/vagrant/.vagrant/machines/default/virtualbox/private_key),
  auth_methods: %w(publickey),
  port: 2222
}
 
