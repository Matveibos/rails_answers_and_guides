1. How to install shoulda-matchers?
    
      gem 'shoulda-matchers'
      
      # add to the rails_helper.rb
      
      Shoulda::Matchers.configure do |config|
        config.integrate do |with|
          # Choose a test framework:
          with.test_framework :rspec

          # Choose one or more libraries:
          with.library :rails
        end
      end
