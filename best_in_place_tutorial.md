1. How you can include best_in_place?
      
      # gem list
      gem 'best_in_place'
      
      # application.js
      
        //= require jquery
        //= require best_in_place
        
        $(document).ready(function() {
          /* Activating Best In Place */
          jQuery(".best_in_place").best_in_place();
        });
   
2. How to add best_in_place to actove admin?
        # add best_in_place to active_admin.js.coffee
        
          #= require best_in_place
          $(document).ready ->
            jQuery(".best_in_place").best_in_place()
      
        # salon page
          index do
            column :price do |salon|
              best_in_place salon, :price, as: :input, url: [:admin, salon]
            end
          end
