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
##----------------------------RAILS--------------------------------------------------

11. What is the difference between User.find(1) and User.find_by(id: 1)?
           
           User.find return exception if argument uncorect
           User.find_by will return nill
