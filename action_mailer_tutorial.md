1. How to see succesful message without deliver?
      
      First add the gem to your development environment and run the bundle command to install it.
            gem "letter_opener", :group => :development
      Then set the delivery method in config/environments/development.rb
            config.action_mailer.delivery_method = :letter_opener
2. How to create simple ActionMailer? 
      
            # app/mailers/user_mailer.rb
            class UserMailer < ApplicationMailer
              default from: 'notifications@example.com'

              def welcome_email(user)
                @user = user
                @url  = 'http://example.com/login'
                mail(to: @user.email, subject: 'Welcome to My Awesome Site')
              end

            end

            # welcome_email.html.erb в app/views/user_mailer/
            <!DOCTYPE html>
            <html>
              <head>
                <meta content='text/html; charset=UTF-8' http-equiv='Content-Type' />
              </head>
              <body>
                <h1>Welcome to example.com, <%= @user.name %></h1>
                <p>
                  You have successfully signed up to example.com,
                  your username is: <%= @user.login %>.<br>
                </p>
                <p>
                  To login to the site, just follow this link: <%= @url %>.
                </p>
                <p>Thanks for joining and have a great day!</p>
              </body>
            </html>

            # add somewhere in controller
            UserMailer.welcome_email(@user).deliver_later
3. Good article about testing actionMailer and rspec?
            
            https://blog.lucascaton.com.br/index.php/2010/10/25/how-to-test-mailers-in-rails-3-with-rspec/
