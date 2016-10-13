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

