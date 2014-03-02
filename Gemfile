source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record
gem "sqlite3", group: [:development, :test]

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

gem "haml", "~> 4.0.3"
gem "haml-rails", "~> 0.4"

gem "httparty", "~> 0.13.0"

gem "rspec-rails"
gem "shoulda-matchers"


group :assets do
  gem 'therubyracer'
  gem 'sass-rails', '~> 4.0.0'
  gem 'coffee-rails', '~> 4.0.0'
  gem "less-rails"
  gem "twitter-bootstrap-rails"
  gem 'uglifier', '>= 1.3.0'
  gem "vcr", "~> 2.8.0" # saves interaction with web for faster tests
  gem "webmock", "1.15" # used by vrc
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :production do
  gem "thin"
  gem "pg"
end

group :development, :test do
  gem "debugger"
end

group :test do
  gem "vcr", "~> 2.8.0" # saves interaction with web for faster tests
  gem "webmock", "1.15" # used by vrc
end

