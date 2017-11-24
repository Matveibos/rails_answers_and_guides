1. What article you can use for starting?
      
        https://www.pluralsight.com/guides/ruby-ruby-on-rails/creating-a-chat-using-rails-action-cable
2. How to genereate channel?
      
         rails generate channel Room
3. Can you provide an examle by ActionCable class?
            
        class RoomChannel < ApplicationCable::Channel
          def subscribed
            stream_from "room_channel"
          end

          def unsubscribed
            # Any cleanup needed when channel is unsubscribed
          end
        end
