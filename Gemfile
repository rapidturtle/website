source "https://rubygems.org"

gem "rails", "4.2.1"

# gem "bcrypt", "~> 3.1.7"
gem "coffee-rails", "~> 4.1.0"
gem "font-awesome-sass"
gem "foundation-rails"
gem "jbuilder", "~> 2.0"
gem "jquery-rails"
gem "pg"
gem "sass-rails", "~> 5.0"
gem "turbolinks"
gem "uglifier", ">= 1.3.0"

gem "sdoc", "~> 0.4.0", group: :doc

group :staging, :production do
  gem "unicorn"
  gem "therubyracer"
end

group :development, :test do
  gem "byebug"
  gem "spring"
  gem "web-console", "~> 2.0"
end

group :test do
  gem "codeclimate-test-reporter", require: nil
  gem "database_cleaner"
  gem "guard-livereload"
  gem "guard-minitest"
  gem "guard-pow"
  gem "minifacture"
  gem "minitest-rails"
  gem "minitest-rails-capybara"
  gem "rake"
end

group :development do
  gem "rack-livereload"
end
