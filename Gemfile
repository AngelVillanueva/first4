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
# Additions for most projects
gem 'awesome_print', '>= 1.1.0' # cool console object output
gem 'faker', '~> 1.1.2' # tool to build fake data easily but with sense
gem 'simple_form', '>= 2.1' # helper for your forms; add gem 'country_select' if needed

# Documentation
group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Production development
group :development do
  gem 'annotate', '>= 2.5.0'
  gem 'better_errors', '>= 0.8.0' # cool error info pages in development. Trace last error also by navigating to 0.0.0.0:3000/__better_errors
  gem 'binding_of_caller', '>= 0.7.1' # cool error info pages in development
  gem 'quiet_assets', '>= 1.0.2' # Get rid of loading assets info in development log
  gem 'ruby_gntp', '>= 0.3.4' # Growl with Bullet
  gem 'bullet', '>= 4.6.0' # Advise on n+1 queries
  gem 'lol_dba', '>= 1.5.0' # Advise on missing indexes, run taks rake db:find_indexes
end

# Production test
group :test do
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
