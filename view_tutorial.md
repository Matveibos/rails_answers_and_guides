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
