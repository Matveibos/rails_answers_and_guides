1. How to create ordinary simple form?
        
        rails generate simple_form:install
      
        <%= simple_form_for @user do |f| %>
          <%= f.input :username %>
          <%= f.input :password %>
          <%= f.button :submit %>
        <% end %>
2. How to add checkbox to simple_form?
      
      
            <%= simple_form_for @temp do |f| %>
              <%= f.input :options, as: :check_boxes, collection: [['Day 1','Day 1'], ['Day 2', 'Day 2']] %>
              <%= f.button :submit %>
            <% end %>
3. How to add radio_buttons to simple form?
            
            <%= simple_form_for @temp do |f| %>
              <%= f.input :options, as: :radio_buttons, collection: [['1','Day 222'], ['2', 'Day 333']] %>
              <%= f.button :submit %>
            <% end %>
4. How to add boostrap class to simple form elem?
            
            <%= f.submit class: 'btn btn-default'%>
5. How to add hidden field?
                
             <%= f.hidden_field :brief_type, value: @submitted_brief.brief_type %>
