1. How to add grape to the simple project?
      
      1. Add gem 
         gem 'grape'
         bundle install
      2. Create model for your api 
         rails g model Building name:string address:string age:integer
         rake db:migrate
      3. Create folder app/api/employee/data.rb and app/api/api.rb
      4. Add to config/application.rb
          require File.expand_path('../boot', __FILE__)

          require 'rails/all'

          Bundler.require(*Rails.groups)

          module EmpApi
            class Application < Rails::Application
              ## Newly Added code to set up the api code
              config.paths.add File.join('app', 'api'), glob: File.join('**', '*.rb')
              config.autoload_paths += Dir[Rails.root.join('app', 'api', '*')]
            end
          end
       5. Inside app/api/employee/data.rb add:
          module Employee
            class Data < Grape::API

              resource :employee_data do
                desc "List all Employee"

                get do
                  Building.all
                end

              end
            end
          end
        6. Inside app/api/api.rb add:
            
            class API < Grape::API
              prefix 'api'
              version 'v1', using: :path
              mount Employee::Data
            end
        7. Open app/config/routes.rb and include:
            Rails.application.routes.draw do
              mount API => '/'
            end
        8. Got to http://localhost:3000/api/v1/employee_data
        9. Another CRUD action https://www.sitepoint.com/build-great-apis-grape/
