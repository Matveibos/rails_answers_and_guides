1. How to install a rails app with the most simple way?
         
         http://installrails.com/

1. How to disable coffee script default files generation?
         
         rails new hello --skip-coffee
         
         # or 
         # Remove or comment out gem 'coffee-rails' from Gemfile.
         # Change Javascript files that ends with .js.coffee to .js.
         # Add config.generators.javascript_engine = :js to your application.rb.
         # Make sure your tmp cache is cleared with rake tmp:cache:clear   
         
1. How you can run server with another environment?
         
         rails s -e another_environment_name

2. How you can redirect back in rails?
         
         redirect_back(fallback_location: root_path)
3. How to send params woth post request bu link click?
         
         link_to "Your value", your_custom_path(param1: 'value1', param2: 'value2'), method: :post

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

5. How you can generate only controller with scaffold?
         
          rails g scaffold_controller <name>

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
6. How to add dropdown menu with references?
         
         # user belongs_to role
         <div class="field">
             <%= f.label :user_role %><br>
             <%= f.collection_select :user_role_id, Role.all, :id, :user_role %>
          </div>
7. How you can get access to the img from js file?
         
         "/assets/1.png"


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
## -----------------------------------ENVIROMPENT PRODUCTION-----------------------------------

                  # 1. rake db:create RAILS_ENV=production
                  # 2. rake db:migrate RAILS_ENV=production
                  # 3. rake db:seed RAILS_ENV=production
                  # 4. rails s -e production
                  # 5. RAILS_ENV=production bundle exec rake assets:precompile
                  # 6. set config/environments/production config.assets.compile = true


## ----------------------- INCLUDING CODE -------------------------------


1. How to include lib files to rails app?
         
         # in config/application.rb:
          config.autoload_paths << Rails.root.join('lib')

         # in lib/foo.rb:

          class Foo
          end
2. How to group elements in active record?
         
         ModelName.all.group_by(&:value).keys
