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
10. 
