1. What article you can use for starting?
      
        https://www.pluralsight.com/guides/ruby-ruby-on-rails/creating-a-chat-using-rails-action-cable
        
        https://www.learnenough.com/action-cable-tutorial#code-message_appender_function
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
4. How to invoke subscribed action for app?
      
         ActionCable.server.broadcast 'room_channel', <data hash>

5. Can you provide an example of js file fo channel?
      
            App.room = App.cable.subscriptions.create "RoomChannel",
              connected: ->
                # Called when the subscription is ready for use on the server

              disconnected: ->
                # Called when the subscription has been terminated by the server

              received: (data) ->
                # Called when there's incoming data on the websocket for this channel
