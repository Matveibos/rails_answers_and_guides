1. How to use json file inside form builder?
        
        # add to model
          serialize :options, JSON
        # add to view
          <%= f.fields_for :data do |data_fields| %>
            <%= data_fields.text_field :company%>
          <% end %>
