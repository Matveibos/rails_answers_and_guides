1. How to create ordinary simple form?
      
        <%= simple_form_for @user do |f| %>
          <%= f.input :username %>
          <%= f.input :password %>
          <%= f.button :submit %>
        <% end %>
