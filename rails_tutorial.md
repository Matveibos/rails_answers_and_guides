1. How you can run server with another environment?
         
         rails s -e another_environment_name
## CONTROLER
1. How you can select all user from model?
         
         def index
           @users = User.all
         end



## MODEL
# validation

1. How you can set text size validation?
         
         validates :content, length: { maximum: 140 }
2. How you can set validate presence?
         
         validates :content, presence: true
# assosiation
1. How you can set has_many assosiation?
         
         class User < ApplicationRecord
           has_many :microposts
         end
         
         class Micropost < ApplicationRecord
           belongs_to :user
         end
2. Hou you can see all User's microposts?
         
         first_user.microposts

## VIEW

## ROUTING 
1. How you can set root route?
         
         root 'controller_name#method_name
2. How you can add all action for User?
         
         resources :users

## DATABASE
1. How you can migrate db?
         
         rails db:migrate
