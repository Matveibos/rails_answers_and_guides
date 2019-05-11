1. Take hash argument?
```ruby
   {
     "expire_date"=>"28-07-2120",
     "limit"=>5000,
     "max-global-limit"=>200000
    }.slice(:limit)
         
    => {"limit"=>5000}
```


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

4. Add to the hash 
         
         hsh["pig"] = "Wilbur"
5. Iteratation

         hsh.each_pair { |k,v| puts "#{k}: #{v}" }
         
         -------------------------------------------------------------------
         
         {"CA"=>"California"}.each do |pair|
            puts pair[0]
            puts pair[1]
         end      

         #=> CA
         #=> California

