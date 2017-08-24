1. How you can generate formatatic form?

     <%= semantic_form_for @post do |f| %>
       <%= f.input :name %>
       <%= f.input :email %>
       <%= f.input :password %>
     <% end %>
     
2. How you can generate formtastic form with nested namespace?
    
       <%= semantic_form_for([:admin, @post]) do |f| %>
         ...
       <% end %>
