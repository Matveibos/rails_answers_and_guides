1. How you can begin rspec test?
        
          rspec spec spec\hello_world_spec.rb
          
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
3. not_to

        expect(message).not_to eq "Hello World!"
4. be 
        
        # class_example.method return true or false
        expect(class_example.method argument).to be false
        
