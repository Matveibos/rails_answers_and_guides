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
