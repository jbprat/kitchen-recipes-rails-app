source 'https://rubygems.org'
ruby '2.3.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'

# Use PostgreSQL as the database for Active Record
gem 'pg'

# Use Puma as the app server
gem 'puma', '~> 3.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use foreman to launch app
gem 'foreman'

# Use dotenv-rails to always source .env
gem 'dotenv-rails'

# Use SCSS for stylesheets
gem 'sass-rails'

# Bootstrap for UI excellence
gem 'bootstrap-sass'

# Use Bootstrap Material Design for UI
gem 'bootstrap-material-design'

# Use Bourbon for being up to date with css 3 browsers abilities
gem 'bourbon', '~> 4.2', '>= 4.2.7'

# Use Elasticsearch to look for records
gem 'elasticsearch', '~> 5.0'
gem 'elasticsearch-model', '~> 0.1.9'
gem 'elasticsearch-rails', '~> 0.1.9'

# Use FFaker for (faster) random data
gem 'ffaker'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Use illusionist to write ECMAScript6
gem 'sprockets', '~> 3.7', '>= 3.7.1'

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 3.0'

# Use Sidekiq to process jobs asynchronously
gem 'sidekiq', '~> 3.5'

# Use Route translator to localize routes
gem 'route_translator'

# Use Simple form to ease form creation
gem 'simple_form'

# Use Bcrypt to secure password
gem 'bcrypt'

# Use friendly_id to have nice addresses
gem 'friendly_id', '~> 5.1.0'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri

  # Test with RSpec
  gem 'rspec-rails'

  # Use Phare to look for coding style errors
  gem 'phare'
  gem 'rubocop'
  gem 'scss-lint', require: false
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '~> 3.0.5'
  gem 'web-console', '>= 3.3.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Use spring-commands-rspec to use RSpec with Spring
  gem 'spring-commands-rspec'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
