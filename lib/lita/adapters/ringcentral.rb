require 'lita'
require 'lita/adapters/ringcentral/connector'

module Lita
  module Adapters
    class RingCentral < Adapter
      namespace 'ringcentral'

      # Required attributes
      config :app_key, type: String, required: true
      config :app_secret, type: String, required: true

      # Optional attributes
      config :server, type: String, default: 'platform.devtest.ringcentral.com'
      config :username, type: String
      config :extension, type: String
      config :password, type: String
      config :token, type: String

      attr_reader :connector

      def initialize(robot)
        super
        @connector = Connector.new(
          robot,
          config.app_key,
          config.app_secret,
          config.server,
          config.username,
          config.extension,
          config.password,
          config.token)
      end

      def run
        @connector.connect
        sleep
      rescue Interrupt
        shut_down
      end

      def send_messages(target, strings)
        Lita.logger.info 'Sending Message'
        @connector.message target.user.id, strings
      end

      def shut_down
        robot.trigger :disconnected
      end
    end
    Lita.register_adapter :ringcentral, RingCentral
  end
end