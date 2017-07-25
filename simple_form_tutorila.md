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

6. How to create simple form with bootstrap styles?
        
        rails g simple_form:install --bootstrap
7. How you can show full error insted of short error for simple form?
        
          # config/initializers/simple_form_bootstrap.rb
          config.wrappers :vertical_form, tag: 'div', class: 'form-group', error_class: 'has-error' do |b|
            # use :full_error instead of :error
            b.use :full_error, wrap_with: { tag: 'span', class: 'help-block' }
          end
8. How you can create polymorphic routing? (/projects/1/tickets/new)
       
       <%= simple_form_for([project, ticket]) do |f| %>
          <%= f.input :name %>
          <%= f.input :description %>

          <%= f.button :submit %>
        <% end %>
