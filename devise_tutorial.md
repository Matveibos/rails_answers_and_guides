1. How you can begin work with devise?
      
        gem 'devise'

        rails generate devise:install

        # config/environments/development.rb
        config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

        # generate model for devise
        rails generate devise MODEL 
