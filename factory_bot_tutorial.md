1. ARTICLES

        https://github.com/thoughtbot/factory_bot/blob/master/GETTING_STARTED.md
        https://semaphoreci.com/community/tutorials/working-effectively-with-data-factories-using-factorygirl
1. How to include new version of gem? (FactoryBot)
        
        # add gem 
        gem "factory_bot_rails"
        
        # add spec/support/factory_bot.rb
        RSpec.configure do |config|
          config.include FactoryBot::Syntax::Methods
        end
        # Remember to require the above file in your rails_helper since the support folder isn't eagerly loaded
        require 'support/factory_bot'
        
        # In new place use FactoryBot instead of FactoryGirl
1. How you can initialize factory folder?

        gem "factory_bot_rails"
        rails g factory_bot:model MyModel
        # it will create spec/factories/my_model.rb
1. How to create Factory?
    
        # This will guess the User class
        FactoryGirl.define do
          factory :user do
            first_name "John"
            last_name  "Doe"
            admin false
          end
        end
2. How to create factory with association?
        
        FactoryGirl.define do
          factory :category_assignment do
            association :category, factory: :category
            association :assignment_entity, factory: :monument
          end
        end
3. How to create many factory by one model?
        
        http://stackoverflow.com/questions/5509790/how-to-create-build-multiple-instances-of-a-factory-in-factory-girl
4. How to create factory girl with another field?
        
        FactoryGirl.create(:cemetary, status: 'accepted')
5. How you can generate uniq email with factory girl?   

        # Defines a new sequence
        FactoryBot.define do
          sequence :email do |n|
            "person#{n}@example.com"
          end
        end
6. How you can create object with different condition?
        
        FactoryBot.define do
          factory :todo_item do
            name 'Pick up a gallon of milk'

            trait :completed do
              complete true
            end

            trait :not_completed do
              complete false
            end
          end
        end
        
        # then 
        create(:todo_item, :completed)
        create(:todo_item, :not_completed)

7. How you create factory from class inside namespace?
        
        FactoryBot.define do
          factory :salon_translation, class: Salon::Translation do
            description { Faker::Lorem.sentence }
            address 'Pushkina 35'
            locale 'ru'
          end
        end
