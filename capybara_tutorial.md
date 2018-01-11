1. Articles
      
      https://github.com/teamcapybara/capybara
## Integration test (capybara)
1. How to generate a default template?
      
       rails g rspec:feature Animal
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
6. How to check post request sending?
      
       gem 'webmock'
       
       # add to rspec_helper.rb
         require 'webmock/rspec'
         WebMock.disable_net_connect!(allow_localhost: true)
## CAPYBARA-WEBKIT

1. How to include capybara-webkit to rails app?
      
            
            1. gem "capybara-webkit"
            2. 
            # inside rspec_helper.rb
            
              require 'capybara-webkit'

              Capybara.javascript_driver = :webkit
            
            3.
            # inside sample set js: true
            it 'destroys last record', js: true do
            end
