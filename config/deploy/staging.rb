$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require 'rvm/capistrano'

default_run_options[:pty] = true

set :domain,          "staging.rapidturtle.com"
set :deploy_to,       "/home/deploy/#{application}"
set :use_sudo,        false
set :rvm_ruby_string, "ruby-1.9.2-p290@rapidturtle"
set :rails_env,       "staging"

role :app, "#{domain}"
role :web, "#{domain}"
role :db,  "#{domain}", :primary => true

set :user,     "deploy"
# set :password, "deploy2k" # not necessary if using ssh keys

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
  
end

# Temporary workaround for precompiling assets
before "deploy:assets:precompile", "bundle:install"
