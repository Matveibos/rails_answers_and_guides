1. 9.to_s(2)

         #=> "1001"
2. "1001".to_i(2)
          
         #=> 9
3. slice
         
         arr = [0,1,2,3,4,5]
         puts arr.slice(3, 2).join(',')   #=> 3,4
         puts arr.slice(0,1).join(',')   #=> 0
         arr.slice(1,0).join(',')   #=> []
4. add to hash 
         
         hsh["pig"] = "Wilbur"
5. iterate in hash

         hsh.each_pair{ |k,v| puts "#{k}: #{v}"}
