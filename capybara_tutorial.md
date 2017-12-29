1. Articles
      
      https://github.com/teamcapybara/capybara
## Integration test (capybara)
1. How you can include integration test?
        
        # inside rspec_helper.rb
        RSpec.configure do |config|
          config.include Capybara::DSL
        end

2. How you can write integration test?

        feature 'Visitor signs up' do
          scenario 'with valid email and password' do
            visit '/about'

            expect(page).to have_content('Sign out')
          end

          scenario 'with invalid email' do
            sign_up_with 'invalid_email', 'password'

            expect(page).to have_selector('h1', text: "About")
          end
        end 
3. List of available command for capybara?
        
        https://gist.github.com/tomas-stefano/6652111
        
4. Another way for includign capybara?
      
        # add gems
            gem 'capybara', '~> 2.13'
            gem 'selenium-webdriver'
        
        # create rspec test
        # include to rspec_helper.rb 
            require 'capybara/rspec'

5. How to add screenshoot for capybara?
      
            gem 'capybara-screenshot', :group => :test
      
            # rspec_helper.rb
            # remember: you must require 'capybara/rspec' first
            require 'capybara-screenshot/rspec'
            
            # the screnshoots will save in the temp/capybara dir
