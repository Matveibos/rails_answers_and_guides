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
           
           => 9

