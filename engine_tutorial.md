1. Articles
      
        http://guides.rubyonrails.org/engines.html
2. How to create own engine?
      
        rails plugin new blorgh --mountable
        # don't forget to remove TODO text from the gemspec
        
3. How to generate model/controller/scaffold?
        
        # like in ordinary way
        rails generate scaffold article title:string text:text
        # don't use equal name for engine and model
3. Hot to add your existing engine to your app?
        
        # path to your engines from current app
            gem 'blorgh', path: 'engines/blorgh'
        
        # config/routes.rb
            mount Blorgh::Engine, at: "/blog"  
        
        # then add migrations
            rails blorgh:install:migrations
5. How to use make a link on the route from engine?
        
        # where 'blorgh' is Engine and articles are routes inside Engine
        <%= link_to "Blog articles", blorgh.articles_path %>
        <%= link_to "Blog articles add", blorgh.new_article_path %>
        <%= link_to "Blog articles edit", blorgh.edit_article_path(1) %>
        <%= link_to "Blog articles show", blorgh.article_path(1) %>
        
6. How can you add a link to the main app from the Engine?
      
       # use main_app prefix
       <%= link_to 'Main', main_app.root_path %>
7. How you can add dependency to your engine app?


            # if you want require it before engine add it to the lib folder
            # lib/engine_class/engine.rb
             require 'carrierwave'
             require 'mini_magick'
             
            module AnimalSnake
              class Engine < ::Rails::Engine
                isolate_namespace AnimalSnake
              end
            end
                  
            # add it to you gemspec
           
            # Describe your gem and declare its dependencies:
            Gem::Specification.new do |s|
              # ....

              s.add_dependency "carrierwave", '~> 0.10.0'
              s.add_dependency 'mini_magick', '~> 4.3'

              s.add_development_dependency "sqlite3"
            end
8. What do you have to do if you can't generate anything?
            
            # you need to disable spring for some time
            DISABLE_SPRING=1 bin/rails generate controller my_controoler
