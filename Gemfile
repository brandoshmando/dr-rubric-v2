source 'https://rubygems.org'


gem 'rails', '4.1.1'

gem 'rails-api'

gem 'active_model_serializers', github: 'rails-api/active_model_serializers', branch: '0-8-stable'

gem 'pg'

group :developement, :test do
  gem 'spring'
  gem 'rspec-rails'
  gem 'spring-commands-rspec'
  gem 'guard-rspec'
  gem 'rb-fsevent' if `uname` =~ /Darwin/
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'shoulda-matchers', require: false
end

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.1.2'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', :group => :development

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
