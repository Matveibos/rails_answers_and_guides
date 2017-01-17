1. What local adress you can use for testing Omniath?
          
          # for twitter
          http://127.0.0.1:3000/auth/twitter/callback
          # for facebook
          http://localhost:3000
2. Where you have to insert KEY in omniath.rb ?
          
          Rails.application.config.middleware.use OmniAuth::Builder do
            # provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
            provider :twitter, '75UOAIDmKrRXvXKBhNvKA', 'GrIaBI0tQy2TtjOtaFL9VxT6s9qq1sV7h9yRaZW4A'
          end
## ActiveAdmin
          
1. How you can start work with ActiveAdmin?
          
          gem 'activeadmin', github: 'activeadmin'
          gem 'inherited_resources', github: 'activeadmin/inherited_resources'
          gem 'devise'
          
          rails g active_admin:install
          rails db:migrate
          rails db:seed
          
          http://localhost:3000/admin
          # Username: admin@example.com
          # Password: password
