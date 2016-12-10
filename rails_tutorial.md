1. How you can run server with another environment?
         
         rails s -e another_environment_name
         
## -----------------------------------SESSION-----------------------------------

1. How you can include session?
         
         # inside application controller add
         include SessionsHelper
2. How you can create session?
         
         # inside helpers
         def log_in(user)
           session[:user_id] = user.id
         end
3. How you can destroy session?
         
         session.delete(:user_id)
         
## -----------------------------------COOKIES-----------------------------------

1. How you can add cookies?
         
          cookies.permanent.signed[:user_id] = user.id
          cookies.permanent[:remember_token] = user.remember_token
          cookies.permanent[:example] = "example"
2. How you can destroy cookies?
         
         cookies.delete(:user_id)
         cookies.delete(:remember_token)

## -----------------------------------CONTROLER-----------------------------------

1. How you can generate controller?
         
         rails generate controller StaticPages home help
2. How you can destroy controller?
         
         rails destroy  controller StaticPages home help

1. How you can select all user from model?
         
         def index
           @users = User.all
         end
4. How you can set strong params?
         
           private

           def user_params
             params.require(:user).permit(:name, :email, :password,
                                          :password_confirmation)
           end


## -----------------------------------MODEL-----------------------------------

# ---filter 
1. How you can use before filter inside model?
         
         before_filter { self.email = email.downcase }
# ---generator
1. How you can generate model?
         
         rails g model User name:string email:string
2. How you can destroy model?
         
         rails destroy model User
3. How you can generate secure password value?
        
         # inside User model add
         has_secure_password
         rails generate migration add_password_digest_to_users password_digest:string
         # where users it's table name
         rails db:migrate
         # add gem 'bcrypt' to gemfile and run bundle install
         # has_secure_password will create two new column => password: "foobar", password_confirmation: "foobar"
         # and for example you can add validation there => validates :password, presence: true
         user.authenticate('password') # if true will return user 
# ---validation
1. How you can set text size validation?
         
         validates :content, length: { maximum: 140 }
2. How you can set validate presence?
         
         validates :content, presence: true
3. How you can check regex value?
         
         validates :email, format: { with: /<regular expression>/ }
4. How you can uniq value?
         
         validates :email, uniqueness: true
# ---assosiation
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
 2. How you can show flash?
         
         # inside controller 
         flash[:success] = "Welcome to the Sample App!"
         # inside view
         <% flash.each do |message_type, message| %>
           <div class="alert alert-<%= message_type %>"><%= message %></div>
         <% end %>
3. How you can change flash color?  
         
         flash[:success] => green
         flash[:danger] => red
         flash[:something_else] => ordinary
4. How you can show flash only 1 times?
         
         flash.now[:danger] = 'Invalid email/password combination'
5. How you can use destroy method?  
         
         <%= link_to "Log out", logout_path, method: "delete" %>
         # inside routes
         delete '/logout', to: 'sessions#destroy'
         

## -----------------------------------ROUTING-----------------------------------
1. how you can see all route?
         
         rails routes
1. How you can set root route?
         
         root 'controller_name#method_name'
2. How you can set simple get action?
         
         get 'controller_name/method_name'
2. How you can set shortest name?
         
         get '/method_name', to: 'controller_name#method_name'
2. How you can add all action for User?
         
         resources :users
3. What is the difference between root_path and root_url?
         
         root_path -> '/'
         root_url  -> 'http://www.example.com/'
4. How you can change standart action_path?
         
          get '/about', to: 'static_pages#about', as: 'ab'
          #=> was about_path, will be ab_path
5. How you can find specific name in routes?
         
         rake routes | grep ressource_name
 

## -----------------------------------DATABASE-----------------------------------
1. How you can migrate db?
         
         rails db:migrate
2. How you can go back on 1 step?
         
         rails db:rollback
3. How you can go to the first step?
         
         rails db:migrate VERSION=0
4. How you can add index to column?
         
         rails generate migration add_index_to_users_email
         # where user - model, email - column
         # and fill in 
           def change
             add_index :users, :email, unique: true
           end
         
         rails db:migrate
5. How you can reset database?
         
         rails db:migrate:reset
## -----------------------------------HELPERS-----------------------------------
1. What you can use instead of < a > tag in rails?
         
         link_to "Home",   '#'
         # it's one thing
         <a href="#">Home</a>
2. What you can use instead of < img > tag?
         
         image_tag("rails.png", alt: "Rails logo")
         # automatically find any images in the app/assets/images/ directory
3. How you can add partial?
         
         <%= render 'layouts/header' %>
         # inside layout create _header.html.erb with code
4. How you can use form_for tag?
         
         # inside controller
           def new
             @user = User.new
           end
          # inside view
            <%= form_for(@user) do |f| %>
               <%= f.label :name %>
               <%= f.text_field :name %>

               <%= f.label :email %>
               <%= f.email_field :email %>

               <%= f.label :password %>
               <%= f.password_field :password %>

               <%= f.label :password_confirmation, "Confirmation" %>
               <%= f.password_field :password_confirmation %>

               <%= f.submit "Create my account", class: "btn btn-primary" %>
             <% end %>
4. How you can use form_for without model object?     
         
         <%= form_for(:session, url: login_path) do |f| %>
               <%= f.label :email %>
               <%= f.email_field :email, class: 'form-control' %>

               <%= f.submit "Log in", class: "btn btn-primary" %>
         <% end %>
5. How you can set corect value of many users? (users or user)
         
         helper.pluralize(2, "error") => 2 errors
