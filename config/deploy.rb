# set your application name
set :application, "apache"
set :deploy_to, "/home/apache/www/"

#set your repository settings
# now setting use subversion and sftp push copy mode.
set :scm, :git
set :repository, "git@github.com:kazupyong/chef.git"

set :deploy_via, :copy
set :copy_strategy, :export

role :web, "54.249.81.124"
set :user, "apache"

# setting your web servers list

set :use_sudo, false

# set Apache start/stop tasks on your environment
namespace :apache do
  task :start do
    sudo "/etc/init.d/httpd reload"
  end
  task :stop do
    sudo "/etc/init.d/httpd reload"
  end
  task :restart, :roles => :app, :except => { :no_release => true } do
    sudo "/etc/init.d/httpd reload"
  end
end
