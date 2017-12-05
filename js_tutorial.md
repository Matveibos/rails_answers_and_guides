## ARTICLES
            https://habrahabr.ru/post/319472/
            https://bonsaiden.github.io/JavaScript-Garden/
            http://www.cheat-sheets.org/saved-copy/jsquick.pdf

1. How you can check if array include element?
            
            arr = [1,2,3]
            arr.indexOf(element) >= 0
2. How you can create loop in array?
            
            var myStringArray = ["Hello","World"];
            var arrayLength = myStringArray.length;
            for (var i = 0; i < arrayLength; i++) {
                alert(myStringArray[i]);
                //Do something
            }
3. What is the best way loop through array of Object?
            
            var a = ["a", "b", "c"];
            a.forEach(function(entry) {
                console.log(entry);
            });
4. How you can sort array of number?
            
            function compareNumeric(a, b) {
              if (a > b) return 1;
              if (a < b) return -1;
            }
            var arr = [ 1, 2, 15 ];
            arr.sort(compareNumeric);
            alert(arr);  // 1, 2, 15
            // or
            numbers.sort(function(a, b){return a - b; });
5. How you can find min and max value of array?
            
            var arr = [1,2,3,55,-12,4,23,11];
            Math.min.apply(null, arr); -> -12
            Math.max.apply(null, arr); -> 55
            
6. What is the shortest way to define function?
            
            arr.map(latter => latter + latter) 
            // equal to
            arr.map(function(latter){
              return latter + latter
            });
7. How you can convert int to string and string to int?
            
            var a = 123.toString()
            var a = 123 + '';
            
            parseInt("10", 10)
            
8. How you can create a range?
            
            [...Array(5).keys()];
            => [0, 1, 2, 3, 4]
            // or 
            Array.from(Array(5).keys())
9. How you can define reduce function?
            
            arr.reduce(function(sum, current) {
               return sum + current;
            }, 0);
            // or
            arr.reduce((sum,i) =>
            (sum + i),0);
10. How you can use exponention method?
            
            // for new js 
            a ** 2 
            // for old js
            Math.pow(4,3);
11. How you can convert array of string to array of number?
            
            arr.map(Number);
12. How you can add new method to existing class?
            
            Array.prototype.square  = function () { return this.map(function(n) { return n*n; }); }
13. Do you know select method in js?
            
            arr.filter(function(item) { return 0 == item % 2; })
            
14. How you can check if number is a integer?
            
            number % 1 === 0
15. How to get a JavaScript object's class?
            
            typeof "dwda" 
            => string
16. How you can debug js code?
            
            debugger;
            garbage
            onEnter: ['$stateParams', '$state', '$uibModal',
                  ($stateParams, $state, $uibModal) ->   
                     $uibModal    
                      .open(
                       # controller: 'CemetaryModalController'
                         templateUrl: 'app/templates/modals/cemetary_modal.html'
                       # resolve: { cemetaryId: $stateParams.id }
                       # size: 'lg'    
                      ) 

                ]    
            ng-click="showModal(monument.id)"
            ng-href="/monuments/{{monument.id}}"
            ng-href="/cemetaries/{{cemetary.id}}"
17. How you can check if array is empty?
            
            if (array === undefined || array.length == 0) {
                // empty
            }
18. How to laod file after load all js?
            
            $(document).on('turbolinks:load', function() {
            
            });
# OBJECTS
1. How to delete key abd value in object?
            
            var obj = {
              one: "1",
              second: "2"
            }

            delete obj.one
2. How to check type of object?
            
            typeof my_object;
              or
            {} instanceof Object;
3. How to convert object to string then return it to the previus state?
            
            var a  = { b: 12, c: 23}
            b = JSON.stringify(aa) => will be a text
            JSON.parse(b) => will be an object
4. What is false value?
            
            false, null, undefined, "", 0, NaN
5. What is true?
            
            Everything else ("false", "0" and ...)
# DOM ELEMENTS

1. How to set bacground-image src from object?
     
                 # you can make interpolation 
                 document.getElementById('image').style.backgroundImage = "url(" + this.src + ")";

3. How to add link link on one some page?
            
            h3#monument-edit
            # add onclick with hash
            button onclick="location.hash=''; location.hash='#monument-edit';"
4. Merge two hashes into one?

            Object.assign(t, v)
# DATA TYPES

1. What is the difference between var, let and const in js?
            
            
            
           
# PATERNS

1. Single var pattern (one var for every variable)
            
            var b = 'hello',
                a = 22,
                c = 'me';
2. When you converting string to number everywhere add counting system
            
             parseInt("10", 10)
# ARRAY

1. How to delete elem from array?
            
            var arr = [1,3,4,5]
            arr.splice(1,0)
            # this method will remove 1 element from 0 indexes
2. How to add element to arr?
            
           var arr = []
           # add to the end of array 
             arr.push('333')
           # remove last value
             arr.pop()
           
           # add to the start of array
             arr.unshift('121221')
           # remove from the start
             arr.shift()
