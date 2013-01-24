source 'https://rubygems.org'

gem 'rails', '3.2.9'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'thin'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'haml-rails'
  gem 'compass-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby
  gem "therubyracer"
  gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
  gem "twitter-bootstrap-rails"
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem "rspec-rails"
  gem 'sqlite3'
end

group :test do
  gem 'capybara'
  gem 'guard-rspec'
  gem 'rb-fsevent'
  gem 'guard-spork'
  gem 'growl'
  gem 'factory_girl_rails'
end

group :production do
  gem 'pg'
end

gem 'haml'
gem 'jquery-rails'
gem 'simple_form'
gem "ckeditor"
gem "carrierwave"
gem 'faker'
gem "mini_magick"

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
