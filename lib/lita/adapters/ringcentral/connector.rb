require 'lita/adapters/ringcentral/callback'
require 'ringcentral_sdk'

module Lita
  module Adapters
    class RingCentral < Adapter
      class Connector
        attr_reader :robot, :client

        def initialize(robot, app_key, app_secret, server, username, extension, password, token, sms_number, debug: false)
          @robot = robot
          @client = RingCentralSdk.new app_key, app_secret, server
          @username = username
          @extension = extension
          @password = password
          @token = token
          @sms_number = sms_number
        end

        def connect
          client_connect
        end

        def client_connect
          Lita.logger.debug('Authenticating with RingCentral.')
          if @token.nil?
            @client.authorize_password @username, @extension, @password
          else
            @client.set_token @token
          end

          observer = Lita::Adapters::RingCentral::Callback.new @robot
          @subscription = @client.create_subscription
          @subscription.subscribe([
            '/restapi/v1.0/account/~/extension/~/message-store/instant?type=SMS'
          ])
          @subscription.add_observer observer
        end

        def message(to_number, strings)
          strings.each do |s|
            @client.messages.sms.create(
              from: @sms_number,
              to: to_number,
              text: s
            )
          end
        end

      end
    end
  end
end