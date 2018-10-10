1. How to store secret data in rails app?
        
              https://pdabrowski.com/blog/ruby-on-rails/easy-configuration-for-you-app-with-yaml-files

              # app/config/my_data.yml

                default: &default
                  some_data: 'SECRET DATA'

                development:
                  <<: *default

                test:
                  <<: *default

                production:
                  <<: *default
              # now you can get access through 

                Rails.application.config_for(:my_data)['some_data']

2. Storing secret data with rails 5.2 ?
                
                https://www.viget.com/articles/storing-secret-credentials-in-rails-5-2-and-up/
