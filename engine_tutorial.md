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
        
        
