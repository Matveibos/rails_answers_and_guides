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

