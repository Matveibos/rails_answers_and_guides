1. What local adress you can use for testing Omniath?
          
          # for twitter
          http://127.0.0.1:3000/auth/twitter/callback
          # for facebook
          http://localhost:3000
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
          
          
          
          
