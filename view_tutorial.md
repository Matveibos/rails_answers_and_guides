1. How to create link with class or style?
      
       <%= link_to item.description, '#', {:style=>'color:#FFFFFF;', :class => "css_class"} %>
2. How to add favicon.ico to project?
      
          link rel="icon" href="/assets/favicon.ico" type="image/x-icon"
          link rel="shortcut icon" href="/assets/favicon.ico" type="image/x-icon"
3. How to pass params to render form?
      
       <%= render 'form', project: @project, ticket: @ticket %>
