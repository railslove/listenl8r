source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'uuidtools'
gem 'pg'
gem 'postgres_ext'
gem "haml-rails"
gem 'jquery-rails'
gem 'html5-rails'
gem 'airbrake'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.5'
  gem 'coffee-rails', '~> 3.2.2'
  gem 'compass-rails', '~> 1.0.3'
  gem 'uglifier', '>= 1.2.6'
end

group :development do
  gem 'heroku'
end

group :test, :development do
  gem "rspec-rails", '~> 2.11.0' # in :development to allow auto-creation of specs when using `rake generate`
end

group :test do
  gem 'factory_girl_rails', '~> 3.5.0'
end
