1. How you can create sample function in CoffeeScript?
    
        hello = (name) ->
          alert "Hello, #{name}!"
        hello "World"
 
2. How you can split string by space?
    
        "Some string".split(" ")
        => ["Some", "string"]
        
3. How you can create array with reverese order?
        
        [1,2,3].reverse()
        => [3,2,1]

4. How you can join string from array?
        
        ['a','b','c'].join('-')
        => 'a-b-c'
5. How you can change default array in coffee?
        
        arr_x2 = [45,135,225,315].map (num) ->
          num * 2
