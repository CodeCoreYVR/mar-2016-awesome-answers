source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

# we're telling Bundler in here that we need Rails with version exactly 4.2.6
gem 'rails', '4.2.6'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.15'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass'

gem 'friendly_id'

# Use Uglifier as compressor for JavaScript assets

# This tells Bundler that we need Uglifier gem with version 1.3.0 or hight
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views

# This tell Bundler that we need coffee-rails gem with version 4.1.x where
# x is 0 or more
gem 'coffee-rails', '~> 4.1.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem "cowsay"

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'faker', github: "stympy/faker"

gem "cancancan"

gem "rails_12factor", group: :production

gem "quiet_assets"

gem 'delayed_job_active_record'
gem "delayed_job_web"

gem 'rack-cors', require: 'rack/cors'

gem 'simple_form'

gem 'chosen-rails'
gem 'jquery-turbolinks'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  gem "letter_opener"

  gem "interactive_editor"
  gem "awesome_print"
  gem "hirb"

  gem "rails-erd"
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
