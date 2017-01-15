1. require 'rest-client'
    
        RestClient.get(url) # get page from url
2. 'open-uri'

        url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
        puts open(url).readline
        #=> THE TRAGEDY OF HAMLET, PRINCE OF DENMARK
3. 'faker'
        
        99.times do |n|
          name  = Faker::Name.name
          email = "example-#{n+1}@railstutorial.org"
          password = "password"
          User.create!(name:  name,
                       email: email,
                       password:              password,
                       password_confirmation: password)
        end
        
4. 'will_paginate'
       
           gem 'will_paginate'
           gem 'bootstrap-will_paginate'

           # add to controller 
           def index
             @users = User.paginate(page: params[:page])
           end

           # add to view 
           <%= will_paginate %>
