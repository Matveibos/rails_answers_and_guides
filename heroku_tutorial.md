1. How to add sinatra app on heroku?
  
          1. heroku login
          
          2. # create Gemfile and add 2 string:
                source "https://rubygems.org"
                gem 'sinatra'
          bundle install
          
          3. # create config.ru file and add 2 string:
                require_relative "my_app"
                run Sinatra::Application
          # check it run: rackup config.ru
          
          4. # create Procfile and add there:
                web: bundle exec rackup config.ru -p $PORT
                
          5. # add git and push to heroku 
                $ git init
                $ git add .
                $ git commit -m "init"
                
                heroku create
                
                git push heroku master
                
2. How to add app with redis on heroku?
           
           heroku addons:create redistogo
           # check it
           heroku config
           
           # change Redis.new on this(in sinatra):
           set :uri, URI.parse(ENV["REDISTOGO_URL"])
           set :redis, Redis.new(:host => settings.uri.host, :port => settings.uri.port, :password => settings.uri.password)
           
3. How you can add rails app on heroku?
        
          ...
          heroku run rails db:migrate
4. How you can run console on heroku?
  
          heroku run console --sandbox
5. How you can resete database?
          
          heroku pg:reset DATABASE
6. How you can watch and close background process on heroku?
          
          # show all runnung proces
          heroku ps
          # => run.4859 (Free): up 2016/01/12 21:28:41 (~ 7m ago): rails c
          # stop process
          heroku ps:stop run.4859
7. Assets doesn't loading on heroku 
          
          You need to do two things to resolve it. First, change these two lines from false to true in production.rb file.

                config.assets.compile = true
                config.assets.digest = true
          Second, if you've syntax like this for your images

              background: url("imgo.jpg") 
          Change it to

               background: image-url("image.jpg")
