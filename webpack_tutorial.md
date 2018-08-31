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
