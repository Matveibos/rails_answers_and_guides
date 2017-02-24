1. How to create Factory?
    
    # This will guess the User class
    FactoryGirl.define do
      factory :user do
        first_name "John"
        last_name  "Doe"
        admin false
      end
    end
