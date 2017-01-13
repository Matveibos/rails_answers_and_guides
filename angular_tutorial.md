## VIEW

1. How you can show array of object?  
        
        # products it is array
        
        <div ng-repeat="product in products" > 
            <p>{{ product.name }}</p> 
            <p>{{ product.price}}</p> 
            <p>{{ product.pubdate }}</p> 
        </div>
2. How you can include controller to html?
      
        <div ng-controller="MainController">
           ...
        </div>
3. How you can add image?
        
        <img ng-src="{{ product.cover }}">
        
4. How you can know index when we use ng-repeat?
        
        $index
5. How you can run function on click?
        
        <div ng-click="plusOne($index)">
            ...
        </div>


## CONTROLLER

1. Can you show me example of angular simple controller?
    
       app.controller('MainController', ['$scope', function($scope) { 
          $scope.title = 'Top Sellers in Books my';
          $scope.promo = "My promo";
          $scope.product = {
            name: "The Book of Trees",
            price: 19,
            pubdate: new Date('2014', '03', '08')
          };
        }]);

        
3. How you can get array of object into controller?
    
         $scope.product = [ 
              { 
                name: 'The Book of Trees', 
                price: 19, 
                pubdate: new Date('2014', '03', '08'), 
                cover: 'img/the-book-of-trees.jpg' 
              }, 
              { 
                name: 'Program or be Programmed', 
                price: 8, 
                pubdate: new Date('2013', '08', '01'), 
                cover: 'img/program-or-be-programmed.jpg' 
              } 
            ]
3. Hoy you can define function into controller?
      
       $scope.plusOne = function(index) { 
            $scope.products[index].likes += 1; 
        };


## FILTER

1. What filter can convert integer to MONEY?
      
        {{ product.price | currency}}
2. What filter you will be use for DATE?
        
        {{ product.pubdate | date }}
3. UPPERCASE?
        
        {{ product.name | uppercase}}
