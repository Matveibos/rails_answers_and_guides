1. How you can run server with another environment?
         
         rails s -e another_environment_name
## CONTROLER
1. How you can select all user from model?
         
         def index
           @users = User.all
         end



## MODEL
1. How you can set text size validation?
         
         validates :content, length: { maximum: 140 }


## VIEW

## ROUTING 
1. How you can set root route?
         
         root 'controller_name#method_name
2. How you can add all action for User?
         
         resources :users

## DATABASE
1. How you can migrate db?
         
         rails db:migrate
