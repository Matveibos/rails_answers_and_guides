0. How you can install coffee_script?

       sudo npm install -g coffee-script
0. How you can run coffee file?

       coffee name_file.coffee
0. How you can compile coffee file to js?
       
       coffee --compile name_file.coffee
       
0. How you can set auto compile on save?
       
       # from game.coffee to main.js
       coffee -j script/main.js -w -c src/game.coffee

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
 
6. How you can select specific values from array?
        
        [20,40,4,5,1].filter (value) -> 
          value % 2 == 0
        
        #=> [20, 40, 4]
7. How you can write simple cycle?

       for x in [0..10]
         console.log(x)
 
8. How you can insert js code to your coffee file?
       
       # just use back quotes
       `console.log(10);`
9. How you can write cycle in one string?
       
       console.log "hello" for [1..3]
10. How you can create loop with some step?

       for x in [10..3] by -2
         alert x
11. What another loop you now?
        
        # --------------
        alert 1 while true
        # --------------
        alert 1 until true
        # --------------
        loop
          alert
          break if true
12. Loop with index?

        arr = ['one', 'two','three']
        for num, i in arr
          alert "#{i} - #{num}"
