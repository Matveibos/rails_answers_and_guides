1. How to create ordinary simple form?
      
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
