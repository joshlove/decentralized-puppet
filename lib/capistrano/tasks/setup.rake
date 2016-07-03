desc "Setup tasks for a fresh server"
task setup: ["setup:apt_get_update", "setup:install_git", "setup:install_puppet"]

namespace :setup do
  desc 'Update Apt'
  task :apt_get_update do
    on roles(:all) do
      execute :sudo, "apt-get update"
    end
  end

  desc 'Installs Git'
  task :install_git do
    on roles(:all) do
      execute :sudo, "apt-get install git"
    end
  end

  desc 'Installs puppet'
  task :install_puppet do
    on roles(:all) do
      execute :sudo, "apt-get install puppet"
      execute :ln, "-s ~/puppet_deploy/current ~/puppet"
    end
  end
end
