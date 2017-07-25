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
