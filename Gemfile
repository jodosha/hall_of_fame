# frozen_string_literal: true

source "https://rubygems.org"

gem "rake"

gem "hanami-utils",       "~> 1.2.0.rc2"
gem "hanami-validations", "~> 1.2.0.rc2"
gem "hanami-router",      "~> 1.2.0.rc2"
gem "hanami-controller",  "~> 1.2.0.rc2"
gem "hanami-view", git: "https://github.com/hanami/view.git", branch: "develop"
gem "hanami-helpers",     "~> 1.2.0.rc2"
gem "hanami-mailer",      "~> 1.2.0.rc2"
gem "hanami-cli",         "~> 0.2.0.rc2"
gem "hanami-assets",      "~> 1.2.0.rc2"
gem "hanami-model",       "~> 1.2.0.rc2"
gem "hanami",             "~> 1.2.0.rc2"

gem "sqlite3"
gem "request_via", require: false

gem "puma"

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem "shotgun"
end

group :test, :development do
  gem "dotenv", "~> 2.0"
end

group :test do
  gem "minitest"
  gem "capybara"
end
