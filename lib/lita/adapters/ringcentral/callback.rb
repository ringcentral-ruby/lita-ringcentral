module Lita
  module Adapters
    class RingCentral < Adapter
      class Callback
        attr_reader :robot

        def initialize(robot)
          @robot = robot
        end

        def create_user(user_data)
          User.create user_data['phoneNumber']
        end

        def update(message)
          Lita.logger.info 'Processing RingCentral Message'
          user_phone_number = message['body']['from']['phoneNumber']
          user = Lita::User.find_by_name user_phone_number
          user = create_user(message['body']['from']) unless user
          source = Lita::Source.new user: user, room: user_phone_number
          post = message['body']['subject'].to_s
          msg = Lita::Message.new @robot, post, source
          @robot.receive msg
        end
      end
    end
  end
end
