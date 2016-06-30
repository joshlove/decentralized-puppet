server 'localhost', user: 'vagrant', roles: %w{app db web}
set :ssh_options, {
  forward_agent: true,
  port: 2222
}
 
