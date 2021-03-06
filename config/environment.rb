require 'bundler/setup'
require 'hanami/setup'
require 'hanami/model'
require_relative '../lib/hall_of_fame'
require_relative '../apps/web/application'

Hanami.configure do
  mount Web::Application, at: '/'

  model do
    ##
    # Database adapter
    #
    # Available options:
    #
    #  * SQL adapter
    #    adapter :sql, 'sqlite://db/hall_of_fame_development.sqlite3'
    #    adapter :sql, 'postgresql://localhost/hall_of_fame_development'
    #    adapter :sql, 'mysql://localhost/hall_of_fame_development'
    #
    adapter :sql, ENV['DATABASE_URL']

    ##
    # Migrations
    #
    migrations 'db/migrations'
    schema     'db/schema.sql'
  end

  mailer do
    root 'lib/hall_of_fame/mailers'

    # See http://hanamirb.org/guides/mailers/delivery
    delivery :test
  end

  early_hints true

  environment :development do
    # See: http://hanamirb.org/guides/projects/logging
    logger level: :debug
  end

  environment :production do
    logger level: :info, formatter: :json, filter: []

    mailer do
      delivery :smtp, address: ENV['SMTP_HOST'], port: ENV['SMTP_PORT']
    end
  end
end
