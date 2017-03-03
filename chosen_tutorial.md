1. How to add chosen to active admin?
        
        # You can integrate it into activeadmin by adding the chosen-rails gem to your Gemfile

        gem 'chosen-rails'
       # Then add the javascript to your app/assets/javascripts/active_admin.js.coffee

        #= require chosen-jquery
       # Add the css to your app/assets/stylesheets/active_admin.scss

        @import "chosen"
       # You can add it to all your select inputs by simply adding the following to                app/assets/javascripts/active_admin.js.coffee

        $ -> 
        $("#active_admin_content select").chosen()
        
        # in active admin
        input :categories, as: :select, collection: Category.all.map{|c| [c.name, c.id]}, include_blank: false, multiple: true, input_html: { class: 'chosen-select' }
        
        
