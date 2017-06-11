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
   
2. How to add best_in_place to active admin?

              # add best_in_place to active_admin.js.coffee

                #= require best_in_place
                $(document).ready ->
                  jQuery(".best_in_place").best_in_place()

              # salon page
                index do
                  column :price do |salon|
                    best_in_place salon, :price, as: :input
                  end
                end
3. best_in_place with enumerize select in activeadmin
            
              index do
                column :genre do |book|
                  best_in_place book, :genre, as: :select, collection: Book.genre.values.map { |genre| [genre, genre] }
                end
              end
