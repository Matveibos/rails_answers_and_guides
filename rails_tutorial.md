1. How you can run server with another environment?
         
         rails s -e another_environment_name
## -----------------------------------CONTROLER-----------------------------------
1. How you can generate controller?
         
         rails generate controller StaticPages home help
2. How you can destroy controller?
         
         rails destroy  controller StaticPages home help

1. How you can select all user from model?
         
         def index
           @users = User.all
         end



## -----------------------------------MODEL-----------------------------------
1. How you can generate model?
         
         rails g model User name:string email:string
2. How you can destroy model?
         
         rails destroy model User
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

## -----------------------------------VIEW-----------------------------------
1. How you can send title from file to layout?
         
         # inside file
         <% content_for :title, "about" %>
         # or 
         <% provide(:title, "about") %>
         # inside layout
         <%= yield :title %>

## -----------------------------------ROUTING-----------------------------------
1. how you can see all route?
         
         rails routes
1. How you can set root route?
         
         root 'controller_name#method_name'
2. How you can set simple get action?
         
         get 'controller_name/method_name'
2. How you can add all action for User?
         
         resources :users

## -----------------------------------DATABASE-----------------------------------
1. How you can migrate db?
         
         rails db:migrate
2. How you can go back on 1 step?
         
         rails db:rollback
3. How you can go to the first step?
         
         rails db:migrate VERSION=0
