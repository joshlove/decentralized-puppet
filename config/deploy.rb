# config valid only for current version of Capistrano
lock '3.5.0'

set :application, 'shellicopter'
set :repo_url, 'git@github.com:joshlove/shellicopter.git'

# set :puppet_roles, :app
# set :puppet_modulepath, "roles:modules"

set :deploy_to, "/home/vagrant/#{fetch(:application)}"
set :pty, true

task :install_git do
  on roles(:all) do |host|
    execute :sudo, 'apt-get --yes install git'
  end
end

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
