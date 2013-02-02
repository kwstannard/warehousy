source 'https://rubygems.org'

gem 'rails', '3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'json'

gem 'haml'
gem 'jquery-rails'

group :test do
  gem "rspec"
  gem "rspec-rails"
  gem "cucumber"
  gem "cucumber-rails", :require => false
  gem "database_cleaner"
  gem "capybara"
end
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', :group => :development

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

platforms :ruby do
  gem 'pg'
end
platforms :jruby do
  gem 'celluloid'
  gem 'jruby-openssl'
  gem 'activerecord-jdbcpostgresql-adapter'
  group :assets do
    gem 'therubyrhino'
  end
end
