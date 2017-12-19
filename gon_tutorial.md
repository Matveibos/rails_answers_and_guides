1. How to install gon?
      
      gem 'gon'
2. How to use gon inside your app?
      
      # somewhere inside controller 
        gon.my_value = 1

      # inside erb view
        <%= Gon::Base.render_data %>
        <script type="text/javascript">
          alert(gon.my_value)
        </script>
        
