1. How to create link with class or style?
      
       <%= link_to item.description, '#', {:style=>'color:#FFFFFF;', :class => "css_class"} %>
2. How to add favicon.ico to project?
      
          link rel="icon" href="/assets/favicon.ico" type="image/x-icon"
          link rel="shortcut icon" href="/assets/favicon.ico" type="image/x-icon"
3. How to pass params to render form?
      
       <%= render 'form', project: @project, ticket: @ticket %>
4. How you can specify line break for text?
            
            # use helper 
            simple_format("...")
5. How tou create path in link_to method with two arguments?
            
            <%= link_to "Delete Ticket", [@project, @ticket], method: :delete %>
6. How you can check current_page value?
            
            current_page?('/')
            #=> true
7. How to deleted all html tags from text?
      
            strip_tags('<p> dwdw </p>')

8. How to set up route path for custom action?
            
            # route
                  post 'my_controller/my_action'
            # view
                  = form_for @my_temp, url: url_for(controller: 'my_controller', action: 'my_action') do
9. What you can do if you want link_to inside button?
            
            # use button_to instead of link_to
            button_to
10. How you can select input field with fail validation?
      
            # rails automaticalyy added such class
            .field_with_errors {
              @extend .has-error;
            }
11. How you can create layout for certain controller views?
      
            views 
                 hello
                        index
                 layout
                        application
                        hello
12. How you can select what layout you would like to use?
            
            class HelloController < ApplicationController
              layout "standart"

              def index
              end
            end
13. How you can invoke some part of specific code?
            
            <% content_for :not_authorized do %>
              <h1>Not authorized</h1>
            <% end %>
            
             <%= yield :not_authorized %>

14. Can you write chain of action for writting html template?
            
            route -> controller -> custom view -> layout
15. How to add form to view?
            
            <%= form_tag action: 'sign_in' do %>
              <p>Enter your name:
              <%= text_field_tag 'visitor_name', @name %></p>
              <%= submit_tag 'Sign in' %>
            <% end %>
            
            # controller
            def sign_in
               @name = params[:visitor_name]
            end
            # route
            
            get 'entries/sign_in', to: 'entries#sign_in'
            post 'entries/sign_in', to: 'entries#sign_in'

16. What kind of form_for exist in rails?
            
            f.label :name
            f.text_field :name
 
            f.text_area :description
            
            f.hidden_field :authenticity_token
            
            f.password_field :secret
            
            f.check_box :can_send_email, {checked: checked}
            
            f.radio_button :country, 'Mexico' 
            
            f.select :country, [ ['Canada', 'Canada'],
                               ['Mexico', 'Mexico'],
                               ['United Kingdom', 'UK'],
                               ['United States of America', 'USA'] ]
                               
            f.date_select :birthday
            
            f.time_select :favorite_time
            
            f.file_field :photo
            
            
17. When you have to use 'multipart: true'?
            
            multipart: true is used, when you have file upload in your form.
            
            form_with(model: person, local: true, html: { multipart: true })
            
19. How to create link for nested routing?
            
            # route.rb
            resources :students do
              resources :awards
            end
            
           # view link
            link_to 'Show', [@student, award]
            link_to 'Edit', edit_student_award_path(@student, award)
            link_to 'Destroy', [@student, award], method: :delete, data: { confirm: 'Are you sure?' }
            link_to 'New Award', new_student_award_path(@student)
          
