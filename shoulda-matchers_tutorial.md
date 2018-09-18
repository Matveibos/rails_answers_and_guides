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
2. The list of most useful mathcher 

          it { is_expected.to belong_to(:todo) }
          it { is_expected.to have_many(:items)}
          it { is_expected.to have_many(:items).dependent(:destroy) }
          
          it { is_expected.to validate_presence_of(:name) }
