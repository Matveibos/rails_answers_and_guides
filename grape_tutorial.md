# `GRAPE`
1. How to add `grape` to the simple project?
      
            1. Add gem 
               gem 'grape'
               bundle install
            2. Create model for your api 
               rails g model Building name:string address:string age:integer
               rake db:migrate
            2*. #Folder inside api must have same name like module
            3. Create folder app/api/buildings/data.rb and app/api/api.rb
            4. Add to config/application.rb
                module EmpApi
                  class Application < Rails::Application
                    ## Newly Added code to set up the api code
                    config.paths.add File.join('app', 'api'), glob: File.join('**', '*.rb')
                    config.autoload_paths += Dir[Rails.root.join('app', 'api', '*')]
                  end
                end
             5*. # remember, you can create module with same name like already existing class
             5. Inside app/api/buildings/data.rb add:
                module Buildings
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
                    mount Buildings::Data
                  end
              7. Open app/config/routes.rb and include:
                  Rails.application.routes.draw do
                    mount API => '/'
                  end
              8. Got to http://localhost:3000/api/v1/employee_data
              9. Another CRUD action https://www.sitepoint.com/build-great-apis-grape/
2. How to define `strong params` with grape?
           
            params do
              requires :monument, type: Hash do
                optional :first_name, type: String
                optional :second_name, type: String
                optional :last_name, type: String
              end
            end
            
            put '/' do
              declared(params)[:monument]
            end
3. How you can define `hash inside another hash`?
            
            params do
              requires :monument, type: Hash do
                optional :first_name, type: String
                optional :second_name, type: String
                optional :cemetary, type: Hash do
                  requires :id, type: Integer
                end
              end
            end

4. How to set `json format` for all project?

            # add format :json
            class API < Grape::API
              prefix 'api'
              version 'v1', using: :path
              format :json

              mount Buildings::Data
            end

