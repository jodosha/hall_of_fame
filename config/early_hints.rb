# frozen_string_literal: true

module Hanami
  class EarlyHints
    def initialize(app)
      @app = app
    end

    def call(env)
      @app.call(env).tap do
        send_early_hints(env)
      end
    end

    private

    def send_early_hints(env)
      return unless Thread.current.key?(:__hanami_assets)

      Thread.current[:__hanami_assets].each_slice(10) do |slice|
        link = slice.map do |asset, options|
          ret = %(<#{asset}>; rel=preload)
          ret += "; as=#{options[:as]}" unless options[:as].nil?
          ret += "; crossorigin" if options[:crossorigin]
          ret
        end.join("\n")

        env["rack.early_hints"].call("Link" => link)
      end
    end
  end
end
