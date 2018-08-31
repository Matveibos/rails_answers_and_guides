1. How to isntall webpack globally?
        
        npm i -g webpack
        npm install webpack-cli -D -g
        
2. How to add webpacker to rails app video tutorial?
      
        https://www.youtube.com/watch?v=Szs1DwEMhPg
3. Webpack for the rails app?

        https://github.com/rails/webpacker
        
4. How to add webpack to the rails app steps?
        
        # Install yarn, npm, webpack 
        # add gem
                gem 'webpacker'
        # install webpacker
                bundle exec rails webpacker:install
        # run webpack server
                bin/webpack-dev-server
        # include to this line to the app/views/layouts/application.html.erb
                <%= javascript_pack_tag 'application' %>
                
                
5. How to add new npm packages to the app?
        
        yarn add styled-components
5.1 How to remove package from the app?
        
        yarn remove [package]
        rails yarn:install
        
6. How to add JQuery only with webpacker?
        
        https://www.youtube.com/watch?v=1vT7M3Kx9IQ
        
        rails new DemoJsApp --webpack
        yarn add jquery
        rails yarn:install
        rails webpacker:install
        
        # add jquery to the app/assets/javascripts/application.js
                //= require jquery
        # check if it works
                $(document).ready(function(){
                  $("#message").html("This is Hello World by JQuery");
                });
