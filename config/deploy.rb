$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require 'rvm/capistrano'
require 'bundler/capistrano'

default_run_options[:pty]   = true
ssh_options[:forward_agent] = true

set :rvm_ruby_string, "1.9.2@rapidturtle"

# repository elsewhere
set :scm,        :git
set :repository, "git@github.com:rapidturtle/com.rapidturtle.www.git"
set :deploy_via, :remote_cache

# user settings
set :user,     "deploy"
set :use_sudo, false

# application details
set :application, "com.rapidturtle.www"

set :domain,    "ve.eyequeue.us"
set :deploy_to, "/home/deploy/#{application}"
set :rails_env, "production"

role :app, "#{domain}"
role :web, "#{domain}"
role :db,  "#{domain}", :primary => true

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
  
  namespace :config do
    desc "Create symlink to shared files and folders on each release."
    task :symlink do
      # run "ln -nfs #{shared_path}/config/aws.yml #{release_path}/config/aws.yml"
      run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
    end
  end
  
  after "deploy:update_code", "deploy:config:symlink"
  before "assets:precompile", "deploy:config:symlink"
end
