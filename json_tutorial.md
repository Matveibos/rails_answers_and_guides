1. Can you give me example of json file?
          
          {
             "President": "Alan Isaac",
             "CEO": "David Richardson",

             "India": [
                "Sachin Tendulkar",
                "Virender Sehwag",
                "Gautam Gambhir"
             ],
             "England": [
                "Alastair Cook",
                "Jonathan Trott",
                "Kevin Pietersen"
             ]
          }

2. How you can convert hash to json?  
         
          require 'json'
          hash.to_json
3. How you can convert json to hash?
          
          require 'json'
          JSON.parse(json_file)
          
4. How you can take and send json params throght post request?
          
          # inside routes add 
                     post '/ask', to: 'users#ask'
          # inside controller 
                    class UsersController < ApplicationController
                      skip_before_action :verify_authenticity_token

                      def ask
                        ask_params = referral_params
                        name = ask_params[:name]
                        surname = ask_params[:surname]

                        render json: {
                          name: name,
                          surname: surname
                        }
                      end
                      
                      def referral_params
                        json_params = ActionController::Parameters.new( JSON.parse(request.body.read) )
                        return json_params.permit(:name, :surname)
                      end
                    end
                    
