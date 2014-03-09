source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'
gem 'pg'

gem 'jquery-rails'
gem 'devise'

group :assets do
  gem 'sass-rails', '~> 4.0.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'coffee-rails', '~> 4.0.0'
  gem 'bootstrap-sass'
end

gem 'turbolinks'
gem 'jbuilder', '~> 1.0.1'
gem 'simple_form'

group :doc do
  gem 'sdoc', require: false
end

# tools for testing
group :development, :test do
  gem 'rspec-rails'
  gem 'better_errors'
end

group :test do
  gem 'cucumber-rails', :require => false
  # use head version to remove annoying bug
  gem 'cucumber', :git => 'git@github.com:cucumber/cucumber'
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
end
