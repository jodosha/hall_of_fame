# frozen_string_literal: true

module Hanami
  class EarlyHints
    def initialize(app)
      @app = app
    end

    def call(env)
      response = @app.call(env)

      link = Thread.current[:__hanami_assets].map do |asset|
        "<#{asset}>; rel=preload"
      end.join("\n")

      env["rack.early_hints"].call("Link" => link)
      response
    end
  end
end
