source 'https://rubygems.org'

gem 'rake'
gem 'hanami-assets', git: 'https://github.com/hanami/assets.git', branch: 'enhance-push-promise'
gem 'hanami',       '~> 1.1'
gem 'hanami-model', '~> 1.1'

gem 'sqlite3'
gem 'request_via', require: false

gem 'puma', git: 'https://github.com/puma/puma.git'

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem 'shotgun'
end

group :test, :development do
  gem 'dotenv', '~> 2.0'
  gem 'byebug', require: false
end

group :test do
  gem 'minitest'
  gem 'capybara'
end

group :production do
  # gem 'puma'
end
