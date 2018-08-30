## General questions
1. Could you please tell us about your last project?
2. How did you solve your biggest problem?

## JS questions
1. What is the promise?
2. How does js async await work?
3. What is the callback?

## http
1. What is the Cross-Origin Resource Sharing (CORS)?
## database
1. Could you tell us how you can improve app perfomance?

           https://www.engineyard.com/blog/improving-rails-app-performance-with-database-refactoring-and-caching
           - eager loading ( N + 1 )
           - indexes ( 100 times faster sometimes )
           - cashing on the Nginx server ( with gem https://github.com/rails/actionpack-page_caching )
## Ruby questions
1. Different between '<<' and '+=' string concatanate:
           
        tom = "kitty"
        jerry = tom

        tom << "kat"

        puts tom 
        #=> kittykat

        puts jerry   
        #=> kittykat
        -----------------------
        
        tom = "kitty"
        jerry = tom
        tom += "kat"

        puts jerry   
        #=> kitty

        puts tom   
        #=> kittykat
2. Fibonacci sequence 

           arr = [0,1]
           18.times do
               arr << arr[-2] + arr[-1]
           end 
           
           # another method
           p (1..67).inject([0,1]) {|sum, i| sum << sum[-1] + sum[-2]}
           
3. Argument
           
           def total( price:, count: 1)
             price * count 
           end
           
           total price: 10
           => 10
4. Rewrite instance method

           class Dog
             def bark 
               puts '1'
             end
           end 
           
           dog = Dog.new 
           
           def dog.bark 
             puts '2'
           end
           
           dog.bark 
           
           => 2
5. Lamba
           
           l1 = ->(a) { a * 2}
           
           l1.call(3)
           l1[3]
           l1 === 3
           
           => 6
           
6. Proc

           p = Proc.new { |a| a * 2 }
           
           p.call(3)
           p[3]
           p === 3
           
           => 6

7. require or require_relative

           difference: point of start ruby program, with require_relative you can run your code from any folder, with require - not 
8. How you can redefine method '+' ?
           
           define_method(:+) do |j|
           end
9. How you can define alias method?( :+ equal to :plus )

           class Fixnum 
             alias_method :plus, :+
           end
10. Case statement with multiple values in each 'when' block
           
           # In a case statement, a , is the equivalent of || in an if statement.
           
           case car
           when 'toyota', 'lexus'
                 # code
           end
11. What will val1 and val2 equal after the code below is executed? Explain your answer.

           val1 = true and false  # => true
           val2 = true && false   # => false
12. There are three ways to invoke a method in ruby. Can you give me at least two?
           
           object = Object.new
           puts object.object_id
            #=> 282660

           puts object.send(:object_id)
            #=> 282660

           puts object.method(:object_id).call # (Kudos to Ezra)
            #=> 282660

13. What is the difference bettween 'first' and 'first!'
           
           first! will return ERROR if record doesn't find
 
14. Why using a class variable it's a bad idea?
           
           # Because class variable inherits from parent 
           class A
             def initialize(name)
               @@name = name
             end

             def foo
               puts @@name
             end
           end


           class B < A
             def increment
               @@name += 1
             end
           end 
           
           # Class B will change @@name 
15. What will be in this part of code?
           
           def my_method
             arr = (1..100).to_a
             arr.each do |a| 
               return a if a == 40
               puts a
             end
           end

           puts my_method
           
           # will return a == 40
           and puts for 1 to 40 
16. What will be in this part of code?
           
           def method
             (1..300).each do |a|
               return if a == 1000
             end
           end

           puts method
           # will return (1..300)
17. You have to know everything from koans
           
           http://rubykoans.com/
18. How to run ruby environment variables?
           
           # hello.rb
               puts ENV['MARCO']
           # inside console
               env MARCO="Pollo" ruby hello.rb
19. How to handle an exception?

             begin  
               puts 'I am before the raise.'  
               raise 'An error has occured.'  
               puts 'I am after the raise.'  
             rescue  
               puts 'I am rescued.'  
             end  
             puts 'I am after the begin block.'  
12. How to use symbol with dish?
           
                       s = :'my-symbol-hello'

13. Some list of questions
           
           https://github.com/undr/ruby-trivia
14. List of instance 

           MyClass.instance_methods(false)
           my_instance.instance_varibles
           my_instance.methods
15. Can you name 3 way for invoking method on object?
           
           my_hash = {a: 12}
           p my_hash.nil?

           my_hash = {a: 12}
           p my_hash.send(:nil?)

           my_method = {a: 12}.method(:nil?)
           p my_method.call
15. What 3 things are not object on ruby?
           
           # if/else/switch
           # while/loop/times
           # block
           
16. What would show this code?
           
           module First
             def initialize
               puts "First"
             end
           end

           module Second
             def initialize
               puts "second"
             end
           end

           class Employee
             include First
             include Second

             def initialize()
               super()
             end
           end

           Employee.new
           # second
17. Difference between public and protected methods?
           
           class Hobbit
             def check_protected_access(hobbit = self)
               hobbit.protected_has_access?
             end

             def check_private_access(hobbit = self)
               hobbit.private_has_access?
             end

             protected

             def protected_has_access?
               puts true
             end

             private

             def private_has_access?
               puts true
             end

           end

           hobbit = Hobbit.new
           hobbit.check_protected_access
           # true
           hobbit2 = Hobbit.new
           hobbit.check_protected_access(hobbit2)
           # true
           hobbit.check_private_access
           # false
16. Can you show me 3 ways for creating Array obeject?
 
           p Array.new(2)
           p Object.const_get(:Array).new(2)
           p [nil, nil]
17. How to get access to instance variable inside class without addition code?

           class A
             def initialize
               @hello = 123
             end
           end

           a = A.new
           p a.instance_variable_get(:@hello)
           a.instance_variable_set(:@hello, 0)
           p a.instance_variable_get(:@hello)
18. How you can define methods dynamic?
           
           define_method(:hello) { puts 'hello' }
           hello
           => 'hello'
19. How you can run module method when it will be include in class?
           
           # it will print 'MyClass'
           module MyModule
             def self.included(base)
               puts base
             end
           end

           class MyClass
             include MyModule
           end
20. Can you provide another way for extending class methods from Module to Class?

           module ClassMethod
             def show
               puts 'show class'
             end
           end

           class Book
             # extend ClassMethod
           end

           Book.extend ClassMethod
           Book.show

           # => show class
20. Can you provide another way for extending class methods from Module to Class?
          
           module InstanceMethod
             def show
               puts 'show instance'
             end
           end

           class Book
             # include InstanceMethod
           end


           Book.include InstanceMethod
           Book.new.show

           # => show instance
21. How you can check if one date range contains a subset of another date range?
    
           (x.first <= y.last) and (y.first <= x.last)
## Rails

1. What is the difference between User.find(1) and User.find_by(id: 1)?
           
           User.find return exception if argument uncorect
           User.find_by will return nill
2. What will return the following code?
           
           
           def hello
             age = 10

             proc { age = age + 1}
           end

           a = hello
           a.call
           a.call
           a.call
           p a.call
           # =>> 14
3. How you can correctly initialize hash with default values?
           
           final_hash = Hash.new { |h, k| h[k] = []}
4. What will return the following code?
 
           def hello
             uniq_var = 0

             [
               proc { uniq_var += 1},
               lambda { uniq_var -= 1}
             ]
           end

           add, sub = hello
           add.call
           add.call
           p add.call
           # => 3
           sub.call
           sub.call
           p sub.call
           # => 0
