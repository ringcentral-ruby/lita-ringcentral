module Lita
  module Adapters
    class RingCentral < Adapter
      class Callback
        attr_reader :robot

        def initialize(robot)
          @robot = robot
          @logger_prefix = " -- #{self.class.name}: "
        end

        def create_user(user_data)
          User.create user_data['phoneNumber']
        end

        def update(message)
          m = message
          unless m.is_a?(Hash) && m.key?('event') && m['event'].index('/message-store/instant?type=SMS').is_a?(Fixnum)
            return
          end
          unless m.key?('body') && m['body'].key?('from') && m['body']['from'].key?('phoneNumber')
            return
          end
          Lita.logger.info "#{@logger_prefix}Processing RingCentral Message"
          Lita.logger.info "#{@logger_prefix}" + MultiJson.encode(message)

          user_phone_number = message['body']['from']['phoneNumber']
          Lita.logger.info "#{@logger_prefix}Message received from #{user_phone_number}"
          user = Lita::User.find_by_name user_phone_number
          user = create_user(message['body']['from']) unless user
          source = Lita::Source.new user: user #, room: user_phone_number
          post = message['body']['subject'].to_s
          msg = Lita::Message.new @robot, post, source
          @robot.receive msg
        end
      end
    end
  end
end
