# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.4'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', :require => false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

# For generating random data, testing and seeding, development and pre-production
gem 'faker'

# for processing jobs async in production
gem 'sidekiq'
# for running periodic tasks
gem 'sidekiq-cron', '~> 1.1'

# for making http requests within RAILS
gem 'faraday'

# JSON data preparation (fastest - 20 times fastor than JBuilder)
gem 'fast_jsonapi'
# JSON data serialization (fastest - 50 times faster than stdlib JSON)
gem 'oj'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', :platforms => %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'rubocop', '~> 0.82.0', :require => false
  gem 'rubocop-faker'
  gem 'rubocop-rails'
end

group :test do
  gem 'database_cleaner'
  gem 'rspec-rails'
  gem 'webmock'
  gem 'shoulda-matchers', '~> 4.3.0'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', :platforms => %i[mingw mswin x64_mingw jruby]
