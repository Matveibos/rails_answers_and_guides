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
        
        
2. How to make widder chosen window in active admin?
        
        :input_html => { :class => "chosen-input",  :style => "width: 700px;"},
        
3. How to include multiply choosen in actve admin?
        
        # add permited params
           permit_params category_ids: []
        #  add to mail active admin window
        input :category_ids, as: :select, :multiple => true, :input_html => { :class => "chosen-input",  :style => "width: 700px;"}, collection: Category.all.collect {|x| [x.name, x.id]}

4. How to set placeholder value for chosen?
        
       You must use the attributes: placeholder-text-multiple and placeholder-text-single
        # don't forget about single quotes inside
        placeholder-text-multiple="'Recepients'"
