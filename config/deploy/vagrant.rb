server 'localhost', user: 'vagrant', roles: %w{app db web}
set :ssh_options, {
  forward_agent: true,
  keys: %w(~/code/vagrant/.vagrant/machines/default/virtualbox/private_key),
  auth_methods: %w(publickey),
  port: 2222
}
filename = File.basename(__FILE__,File.extname(__FILE__))
set :puppet_manifest_file, "~/puppet/manifest/#{filename}.pp"
