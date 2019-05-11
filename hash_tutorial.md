1. Take hash argument?
        
        {
        "expire_date"=>"28-07-2120",
         "limit"=>5000,
         "max-global-limit"=>20010030000}.slice(:limit)
         
         => {"limit"=>5000}
 2. Always has access to the hash key like a string
                
            {limit:5000}["limit"] => return nil
            {limit:5000}.with_indifferent_access["limit"] => return 5000
3. Except some data from hash?
        
        hash = { a: true, b: false, c: nil}
        hash.except(:c) # => { a: true, b: false}
        hash # => { a: true, b: false, c: nil}
4. How to get access to the inner hash data?
        
        h = { foo: {bar: {baz: 1}}}

        h.dig(:foo, :bar, :baz)           #=> 1
        h.dig(:foo, :zot)                 #=> nil

4. add to hash 
         
         hsh["pig"] = "Wilbur"
5. iterate in hash

         hsh.each_pair{ |k,v| puts "#{k}: #{v}"}
         
         -------------------------------------------------------------------
         
         {"CA"=>"California"}.each do |pair|
            puts pair[0]
            puts pair[1]
         end      

         #=> CA
         #=> California
         
5. inject
         
         val = [1,3,5,7].inject(0) do |total, num|
           total += num
         end   
         puts val   #=> 16
