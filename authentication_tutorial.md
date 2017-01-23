1. How you can create provider app for testing Omniath?
          
          # for twitter
	   	1. https://apps.twitter.com/
	   	# callback (users for devise)
	   	2 http://127.0.0.1:3000/users/auth/twitter/callback
	   
          # for facebook
	   	1. https://developers.facebook.com/
	   	2. create new app, in "проверка приложения" choose available for everybody
	   	3. in setting add new platform (web-site) with such adress (#users need for devise)
	   	http://localhost:3000/users/auth/facebook/callback
	  
	  	# for vk
		1. https://vk.com/dev
		2. choose my_app -> create new app -> web-site
		3. http://localhost:3000/users/auth/vkontakte/callback
	  
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
2. How you can add your model to admin page?
          
          rails generate active_admin:resource Genre
          rails generate active_admin:resource Author
          rails generate active_admin:resource Book
3. How you can show only specific column?
          
          # inside app/admin/book.rb add
            index do
              column :name
              column :author
              column :genre
              column :price
            end
4. How you can show other name (not only column name)?
          
          # rewrite model class with to_s
          
          class Author < ApplicationRecord
            has_many :books

            def to_s
              "#{first_name} #{last_name}"
            end
          end
5. How to add View, Edit and delete method to row?
          
          # add actions field
          index do
              column :name
              column :author
              actions
          end
6. How to add helper for money?
          
          # add number_to_currency helper
          index do
              column :price do |product|
                number_to_currency product.price
              end
          end
 7. How you can change column name?
          
          index do
            column "new name", :name
          end
 8. How you can change right side filter?
          
            filter :author
            filter :name
            filter :genre
            filter :price
 9. How you can change list to check box in filter?
          
            filter :author, :as => :checkbox
            
## Devise

1. How you can start with devise?
          
          rails g devise:install
          rails g devise user
2. How you can add standart login and logout method?
          
          <% if user_signed_in? %>
            <li>
            <%= link_to('Logout', destroy_user_session_path, :method => :delete) %>        
            </li>
          <% else %>
            <li>
            <%= link_to('Login', new_user_session_path)  %>  
            </li>
          <% end %>
3. How you can show current user email?
          
            <% if user_signed_in? %>	
	     <%= current_user.email %>      
	    <% end %>
4. How you can copy devise views to your app?
	   
	   rails generate devise:views
	   
## Omniath with devise

		1. add gems 
			gem 'devise'
			gem 'omniauth'
			gem 'omniauth-twitter'
			gem 'omniauth-facebook'
			gem 'omniauth-vkontakte'
		
		3. generate devise
			rails generate devise:install
			rails generate devise User
			rake db:migrate
		4. add provider and uid column to user
			rails g migration AddColumnsToUsers provider uid
			rake db:migrate
		5. creatate facebook, vk, twitter app ang get secret id
		6. add secret key to config/initialize/devise.rb
			  #ID first, secret second
			  config.omniauth :digitalocean, "db381dc9990be7e3bc42503d0", "5b0824c2722b65d29965f1a1df"
		7. update user class with omniathable, and from_omneath method
			class User < ApplicationRecord
			  devise :database_authenticatable, :registerable,
				 :recoverable, :rememberable, :trackable, :validatable,
				 :omniauthable, :omniauth_providers => [:twitter, :facebook, :vkontakte]

			  def self.from_omniauth(auth)
			      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
				user.provider = auth.provider

				user.uid = auth.uid
				if auth.info.email != nil
				  user.email = auth.info.email
				elsif auth.info.nickname != ''
				  user.email = auth.info.nickname + '@tut.by'
				else
				  user.email = "vk#{auth.uid}@tut.by"
				end
				user.password = Devise.friendly_token[0,20]
			      end
			  end
			end
		8. add to routing callback
			devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
		9. create callback controller  myapp/app/controllers/callbacks_controller.rb
			class CallbacksController < Devise::OmniauthCallbacksController
			    def twitter
				@user = User.from_omniauth(request.env["omniauth.auth"])
				sign_in_and_redirect @user
			    end
			end
			
		
          
