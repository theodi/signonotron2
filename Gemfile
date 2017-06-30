source 'https://rubygems.org'

ruby "1.9.3"

gem 'rails', '~> 3.2.22'
gem 'dotenv-rails'

gem 'kaminari', '0.17.0'
gem 'alphabetical_paginate', '2.3.2'
gem 'mysql2'
gem 'aws-ses', require: 'aws/ses'
gem 'jquery-rails'

gem 'airbrake', '3.1.15'
gem 'plek', '2.0.0'
gem 'json', '1.8.6'
gem 'whenever', '0.9.7', require: false

gem 'uuid'

# Gems used to provide Authentication and Authorization services.
gem 'devise', '2.2.5'
gem 'devise_invitable', '1.1.5'
gem 'devise-encryptable', '0.2.0'
gem 'devise_security_extension', git: "https://github.com/alphagov/devise_security_extension.git", branch: "4d14ed4c9ae8f23da0e9d5de2b6b69d9b53cd73d"
gem 'devise_zxcvbn', '1.1.0'
gem 'devise-async', '0.8.0'

gem 'doorkeeper', '~> 1.0'
gem 'ancestry', '2.0.0'
gem 'cancan', '1.6.10'

gem 'gds-api-adapters', '33.1.0'
gem 'statsd-ruby', '1.4.0'
gem 'sidekiq', '2.17.2'
gem 'sidekiq-statsd', '0.1.5'

gem 'redis', '3.3.3'

group :development do
  gem 'sqlite3'
  gem 'quiet_assets'
end

gem 'logstasher', '0.9.0'

group :test do
  gem 'capybara', '2.2.1'
  gem 'poltergeist', '1.5.0'
  gem 'database_cleaner', '1.6.1'
  gem 'factory_girl_rails', '4.8.0'
  gem 'mocha', '1.2.1', require: false
  gem 'shoulda', '3.0.1'
  gem 'webmock', '1.17.3'
  gem 'test-unit', '2.5.2', require: false
  gem 'simplecov', '0.14.1'
  gem 'simplecov-rcov', '0.2.3'
  gem 'ci_reporter', '2.0.0'
  gem 'timecop', '0.9.0'
end

group :production do
  gem 'foreman', '< 0.84.0'
  gem 'thin'
  gem "rails_12factor"
end