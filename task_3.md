## PushkinContest for rails 5 

1. Create model
          
          rails g model Poem title:string balada:text
          rails g model Token value:string
          rails g model PoemLine line:string sort_letters:string length:integer
          rails g model Temp question:string answer:string level:integer time:integer
2. Create controller

          rails g controller Contest registration quiz
     
3. Gems
          
          gem 'mechanize'

          gem 'colorize'

          gem 'unicode_utils'
          
          group :production do
            gem 'pg'
            gem 'rails_12factor'
          end
4. add lib/parser.rake

5. add action to routes
      
       root 'contest#index
       
       post '/registration', to: 'contest#registration'
       post '/quiz', to: 'contest#quiz
