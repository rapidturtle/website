source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3', :groups => [:development, :test]
gem 'pg', :group => :staging
gem 'mysql2', :group => :production


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'
gem 'capistrano-ext'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development, :test do
  gem 'cucumber-rails'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'webrat'
  gem 'rb-fsevent', :require => false if  RUBY_PLATFORM =~ /darwin/i
  gem 'guard-cucumber'
  gem 'guard-pow'
  gem 'guard-rspec'
  gem 'growl_notify'
end

group :staging, :production do
  gem 'execjs'
  gem 'therubyracer'
end
