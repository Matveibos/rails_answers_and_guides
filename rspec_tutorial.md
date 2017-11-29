1. How to add to rails?
        
        group :development, :test do
          gem 'rspec-rails', '~> 3.6'
        end
        
        rails generate rspec:install
2. How to generate a standart model spec?

        rails generate rspec:model model_name
1. How you can begin rspec test?
        
          rspec spec\hello_world_spec.rb
          
2. Example describe, it, expect().to eq methods 
        
        class HelloWorld
           def say_hello 
              "Hello World!"
           end
        end

        describe HelloWorld do 
           context “When testing the HelloWorld class” do 
              it "should say 'Hello World' when we call the say_hello method" do 
                 hw = HelloWorld.new 
                 message = hw.say_hello 
                 expect(message).to eq "Hello World!"
              end
           end
        end
3. expect().not_to eq

        expect(message).not_to eq "Hello World!"
4. expect().to be 
        
        # class_example.method return true or false
        expect(class_example.method argument).to be false
5. What file run rspec?
        
        all file which ends on _spec.rb
6. be_instance_of, be_kind_of, respond_to 
        
        describe "An example of the type/class Matchers" do
           it "should show how the type/class Matchers work" do
              x = 1 
              y = 3.14 
              z = 'test string' 

              # The following Expectations will all pass
              expect(x).to be_instance_of Fixnum 
              expect(y).to be_kind_of Numeric 
              expect(z).to respond_to(:length) 
           end
        end
7. raise_error testing
        
        describe "An example of the error Matchers" do 
           it "should show how the error Matchers work" do 

              # The following Expectations will all pass 
              expect { 1/0 }.to raise_error(ZeroDivisionError)
              expect { 1/0 }.to raise_error("divided by 0") 
              expect { 1/0 }.to raise_error("divided by 0", ZeroDivisionError) 
           end 
        end
8. How you can use mock(double) method?
        
        class ClassRoom 
           def initialize(students) 
              @students = students 
           end

           def list_student_names 
              @students.map(&:name).join(',') 
           end 
        end

        describe ClassRoom do 
           it 'the list_student_names method should work correctly' do 
              student1 = double('student') 
              student2 = double('student') 

              allow(student1).to receive(:name) { 'John Smith'} 
              allow(student2).to receive(:name) { 'Jill Smith'} 

              cr = ClassRoom.new [student1,student2]
              expect(cr.list_student_names).to eq('John Smith,Jill Smith') 
           end 
        end
9. before_each 

        describe SimpleClass do 
           before(:each) do 
              @simple_class = SimpleClass.new 
           end 

           it 'should have an initial message' do 
              expect(@simple_class).to_not be_nil
              @simple_class.message = 'Something else. . .' 
           end 

           it 'should be able to change its message' do
              @simple_class.update_message('a new message')
              expect(@simple_class.message).to_not be 'howdy' 
           end
        end
10. How you can check if value equal each other?
        
         it "status should be 'declaimed' by default" do
           expect(@monument.status).to eq('declaimed')
         end
11. Rspec test api?
        
        http://www.thegreatcodeadventure.com/better-rails-5-api-controller-tests-with-rspec-shared-examples/
12. FactoryGirl documentation
        
        https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md
13. На русском языке немного об рспек
        
        http://betterspecs.org/ru/
14. Пару вводных уроков 

        https://semaphoreci.com/community/tutorials/getting-started-with-rspec
        http://blog.teamtreehouse.com/an-introduction-to-rspec
        https://semaphoreci.com/community/tutorials/how-to-test-rails-models-with-rspec
15. How to check has_many association?
        
        # install gem called Shoulda.
        describe Post do
          it { should have_many(:categories) }
        end
        
        describe Post do
          it { should have_many(:categories).through(:other_model) }
        end
16. Belong_to accosiation
        
          context "association" do
            it { should belong_to(:category) }
            it { should belong_to(:assignment_entity) }
          end
17. How you can check callback value?
        
        install gem shoulda-callback-matchers
        # and add 
        describe Article do
          it { should callback(:do_something).after(:save) }
        end

19. How you can check if object is valid?
        
                admin = AdminUser.new(email:'aaa@tut.by')
                admin.valid?
20. How you can compare value with length?
                
                expect(admin.password.length).to be(8)
21. How you can define let with hash?

        let(:user_params) { {"email" => user.email, "password" => user.password} }
        # or
        let(:user_params) do 
          { "email" => user.email, "password" => user.password }
        end
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
4. How to send post request with params?
        
       user_params = FactoryGirl.attributes_for(:user)
       post :create, params: { session: user_params }
5. How to add helper inside test?
        
        module FeatureHelper
          def log_in_as
            # ---
          end
        end
        
        RSpec.configure do |config|
          config.include FeatureHelper
        end
## API SPECS

1. Articles
        
        http://matthewlehner.net/rails-api-testing-guidelines/
        
2. Simple responce after rails scaffolding

        describe "ParkinPlace API" do
          it 'sends a list of parking_places' do
            FactoryBot.create_list(:parking_place, 10)

            get '/parking_places.json'

            json = JSON.parse(response.body)
            # test for the 200 status-code
            expect(response).to be_success

            # check to make sure the right amount of messages are returned
            expect(json.length).to eq(10)
          end
        end
18. How you can pass params on PUT/POST methods?
        
          before do 
            params = {place: {id: place.id, latitude: place.latitude, longitude: place.longitude, description: place.description},
            cemetary: {id: cemetary.id, name: cemetary.name, country: cemetary.country, city: cemetary.city}}
            put "/api/v1/cemetaries/#{cemetary.id}", params: params
          end
4. How to send destroy method from api? ( Which was generated by scaffold )

          context "#DESTROY" do
            let!(:parking_places) { FactoryBot.create_list(:parking_place, 5) }

            it 'destroys a parking_place' do
              expect {
                delete "/parking_places/#{parking_places.last.id}.json"
              }.to change { ParkingPlace.count }
            end
          end
## MODEL TESTS

1. Articles
        
        https://semaphoreci.com/community/tutorials/how-to-test-rails-models-with-rspec
## STUB/ MOCK

1. Articles
        
        https://github.com/bblimke/webmock
