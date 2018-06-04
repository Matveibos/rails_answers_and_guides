1. How to create task with ActiveModel?
       
        # countries.rake
        namespace :countries do
          task :to_alpha => :environment do
            puts 'run my task'
            Cemetary.all.each do |cemetary|
              cemetary.update(country: cemetary.country)
              puts cemetary.country
            end
            Monument.all.each do |monument|
              monument.update(born_country: monument.born_country, burial_country: monument.burial_country)
            end
          end
        end
        
        
        rake countries:to_alpha
2. How to generate task?
       
       rails g task my_namespace my_task1 my_task2
       # then 
       rake my_namespace:my_task1
