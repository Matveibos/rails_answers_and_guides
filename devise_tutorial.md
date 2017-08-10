## Devise
1. How you can begin work with devise?
      
        gem 'devise'

        rails generate devise:install

        # config/environments/development.rb
        config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

        # generate model for devise
        rails generate devise MODEL 

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
  
5. How you can find user by reset passsword token?
	
	    # just add
	    User.with_reset_password_token('8VpyktNLAg-2NskT_V32')
6. How you can generate custom controller?

		rails generate devise:controllers users
