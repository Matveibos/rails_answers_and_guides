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
