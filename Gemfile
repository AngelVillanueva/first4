source 'https://rubygems.org'
ruby '2.0.0'
# gemset 2.0.0@first4

# Basic foundation
gem 'rails', '4.0.0'
gem 'thin' # server for development and test environments
gem 'pg', '~> 0.15' # postgresql database adapter for all environments
gem 'sass-rails', '~> 4.0.0' # Use SCSS for stylesheets
gem 'uglifier', '~> 2.1.1' # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.0.0' # Use CoffeeScript for .js.coffee assets and views
gem 'jquery-rails', '~> 3.0.4' # Use jquery as the JavaScript library
gem 'turbolinks', '~> 1.1.1' # Turbolinks makes following links in your web application faster
gem 'jbuilder', '~> 1.2' # Build JSON APIs with ease
gem 'haml', '>= 4.0.0' # templating haiku
# Additions for most projects
gem 'awesome_print', '>= 1.1.0' # cool console object output
gem 'faker', '~> 1.1.2' # tool to build fake data easily but with sense
gem 'simple_form', '>= 2.1' # helper for your forms; add gem 'country_select' if needed

# Documentation
group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Shared enviroments
group :development, :test do
  gem 'rspec-rails', '>= 2.14.0' # also in development to have access to Rspec specific generators
  gem 'guard-rspec', '>= 2.1.0'
end

# Development environment
group :development do
  gem 'annotate', '>= 2.5.0'
  gem 'better_errors', '>= 0.8.0' # cool error info pages in development. Trace last error also by navigating to 0.0.0.0:3000/__better_errors
  gem 'binding_of_caller', '>= 0.7.1' # cool error info pages in development
  gem 'quiet_assets', '>= 1.0.2' # Get rid of loading assets info in development log
  gem 'ruby_gntp', '>= 0.3.4' # Growl with Bullet
  gem 'bullet', '>= 4.6.0' # Advise on n+1 queries
  gem 'lol_dba', '>= 1.5.0' # Advise on missing indexes, run taks rake db:find_indexes
end

# Test environment
group :test do
  gem 'shoulda-matchers', '>= 2.4.0' # matcher helpers for rspec
  gem 'selenium-webdriver', '>= 2.37.0' # run test with javascript involved
  gem 'capybara', '>= 2.1.0' # simulate interactions in tests with English-like syntax
  gem 'launchy', '>= 2.3.0' # method save_and_open_page for capybara
  gem 'rb-fsevent', require: false
  gem 'growl'
end

# Production environment
group :prodution do
  gem 'rails_12factor'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
