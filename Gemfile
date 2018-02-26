source 'https://rubygems.org'

gem 'rake'

gem 'hanami-utils',       require: false, git: 'https://github.com/hanami/utils.git',       branch: 'develop'
gem 'hanami-validations', require: false, git: 'https://github.com/hanami/validations.git', branch: 'develop'
gem 'hanami-router',      require: false, git: 'https://github.com/hanami/router.git',      branch: 'develop'
gem 'hanami-controller',  require: false, git: 'https://github.com/hanami/controller.git',  branch: 'develop'
gem 'hanami-view',        require: false, git: 'https://github.com/hanami/view.git',        branch: 'develop'
gem 'hanami-helpers',     require: false, git: 'https://github.com/hanami/helpers.git',     branch: 'develop'
gem 'hanami-mailer',      require: false, git: 'https://github.com/hanami/mailer.git',      branch: 'develop'
gem 'hanami-cli',         require: false, git: 'https://github.com/hanami/cli.git',         branch: 'develop'
gem 'hanami-assets',      require: false, git: 'https://github.com/hanami/assets.git',      branch: 'develop'
gem 'hanami-model',       require: false, git: 'https://github.com/hanami/model.git',       branch: 'develop'
gem 'hanami',                             git: 'https://github.com/hanami/hanami.git',      branch: 'feature/early-hints'

gem 'sqlite3'
gem 'request_via', require: false

gem 'puma'

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
end
