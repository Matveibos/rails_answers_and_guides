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
6. How to include ActionCable from route?
            
            # route.rb
            mount ActionCable.server, at: '/cable'
            
7. Where you can get information from rails subscribe method?
            
            # room.coffee
            received: (data) ->
              alert data.user_name
              # Called when there's incoming data on the websocket for this channel
8. How you can send ajax request from form?
                  
              # add remote: true
              <%= form_for(@message, remote: true) do |f| %>
                <%= f.text_area :content %>
                <%= f.submit "Send" %>
              <% end %>
9. How you can send part of html code to the channel?
      
            # 1. define render message
                  def render_message(message)
                    render(partial: 'message', locals: { message: message })
                  end
            # 2. Send this message to channel
                  ActionCable.server.broadcast 'room_channel', message: render_message(message)
            # 3. Change values inside js
                 received: (data) ->
                      unless data.message.blank?
                        $('#messages-table').append data.message
