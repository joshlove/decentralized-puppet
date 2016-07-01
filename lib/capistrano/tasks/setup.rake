desc "Setup tasks for a fresh server"
task setup: ["setup:apt_get_update", "setup:install_git"]

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
end
