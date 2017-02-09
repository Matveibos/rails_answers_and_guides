1. How you can include angular?

        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.1/angular.min.js"></script>
        
## MODULE, MODEL

1. How you can define module?
        
        var app =  angular.module("store", [])
2. How you can include angular module?
       
        <html ng-app="store">
        
        </heml>
3. How you can add another module to main module?
        
        # main.js
                var app = angular.module('gemStore', ['store-directives']);
        # main.html
                 <script type="text/javascript" src="product.js"></script>
        # product.js
                (function() {
                          var app = angular.module('store-directives',[]);
                          app.directive("productDescription", function() {
                            return {
                              restrict: 'E',
                              templateUrl: "product-description.html"
                            };
                          });
                 })();
3. How you can set simple model?
        
        <  ng-model=""> 
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
6. How you can set value by click?
        
        <a href="" ng-click="tab = 1"> ... </a>
        {{ tab }} 
        
        # tab => 1
6. How you can init value ?
        
        <div ng-init="tab = 1"> ... </div>
        
6. How you can show tag when attribute is true?
        
        <button ng-show="true"> ... </button>
7. How you can hide tag when attribute is true?
        
        <button ng-hide="true"> ... </button>
8. How you can cpecify class?
        
        <li ng-class="{ active: true }"> .. </li>
9. How you can add action by submit?
        
        # index.html
            <form ng-submit="addPost()">
               <input type="text" ng-model="title">
               <button type="submit">Post</button>
            </form>
        # controller.js
             $scope.addPost = function(){
		  $scope.posts.push({title: $scope.title, upvotes: 0});
		  $scope.title = '';
	     };
10. How to include another html file?
	
		<body ng-app="">

			<div ng-include="'myFile.html'"></div>

		</body>
11. How to add dropdown list for angular?( 2 way)
		
		# first way
	 	    <select ng-model="newVisitor.category_id">
		      <option ng-repeat="x in categories" value="{{x.id}}">{{x.category_name}}</option>
		    </select>
		# second way
		   <select ng-model="newVisitor.category_name" ng-options="x.id for x in categories">
           	   </select> 
	
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
4. How you can limit ng-repeat count in array?
        
        < div ng-repeat="product in products | limitTo:3"> ... </div>
5. How you can ordered array?
        
         < div ng-repeat="product in products | orderedBy:'-price'"> ... </div>
        
        
## DIRECTIVE
2. How you can include html file?
        
         <div  ng-include="'product-description.html'">
            ...
         </div>

1. How you can specify new directive(tag) ?
        
        # appinfo.js
                app.directive('appInfo', function() { 
                  return { 
                    restrict: 'E', 
                    scope: { 
                      info: '=' 
                    }, 
                    templateUrl: 'js/directives/appInfo.html' 
                  }; 
                });

        # appInfo.html
                <img class="icon" ng-src="{{ info.icon }}"> 
                <h2 class="title">{{ info.title }}</h2> 
                <p class="developer">{{ info.developer }}</p> 
        
        # index.html
                <app-info info="move"></app-info>
 2. How you can specify directive as attribute of tag?
        
          app.directive("productSpecs", function(){
            return {
              restrict: 'A',
              templateUrl:  "product-specs.html"
            };
          });

        <div product-specs"></div>
 3. How you can add controller to directive?
        
        app.directive("productTabs", function(){
            return {
              restrict: 'E',
              templateUrl: 'product-tabs.html',
              controller: function(){
                  this.tab = 1;
                  
                  this.setTab = function(setTab) {
                    this.tab = setTab;
                  };
              },
              controllerAs: "tab"
            };
          });
## SERVICE

1. How you can define service?
        
        # service.js
                app.factory('forecast', ['$http', function($http) { 
                  return $http.get('https://s3.amazonaws.com/codecademy-content/courses/ltp4/forecast-api/forecast.json') 
                            .success(function(data) { 
                              return data; 
                            }) 
                            .error(function(err) { 
                              return err; 
                            }); 
                }]);
        
        # inside controller
                app.controller('MainController', ['$scope', 'forecast', function($scope, forecast) { 
                  forecast.success(function(data) { 
                    $scope.fiveDay = data; 
                  });
                }]);
2. How you can add dependency to our controller(dependency injection)?
                
                app.controller('MyController', ['$http', $log, function($http, $log) {
                   var store = this;
                   
                   store.products = [];
                   
                   $http.get('/products.json').success(function(data){
                     store.products = data;
                   });
                }  ]);
                
## ROYTING

1. How you can define simple route?
        
        # inside app.js
        
        var app = angular.module('GalleryApp', ['ngRoute']);
        app.config(function ($routeProvider) { 
          $routeProvider 
            .when('/', { 
              controller: 'HomeController', 
              templateUrl: 'views/home.html' 
            })
            .when('/photos/:id',{
              controller: 'PhotoController', 
              templateUrl: 'views/photo.html' 
            })
            .otherwise({ 
              redirectTo: '/' 
            }); 
        });
2. What is the second way define route with ui-routing?(better)
        
       # index.html
         <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-router/0.2.10/angular-ui-router.js"></script>
         <ui-view> </ui-view>
       # app.js
       angular.module('flapperNews',['ui.router])
        .config([
        '$stateProvider',
        '$urlRouterProvider',
        function($stateProvider, $urlRouterProvider) {

          $stateProvider
            .state('home', {
              url: '/home',
              templateUrl: '/home.html',
              controller: 'MainCtrl'
            });

          $urlRouterProvider.otherwise('home');
        }])
3. How you can specify url with id?
        
        .state('posts', {
          url: '/posts/{id}',
          templateUrl: '/posts.html',
          controller: 'PostsCtrl'
        });
		# or
		.state('visitors_edit', {
		      url: '/visitors/:id/edit',
		      templateUrl: 'views/visitors_edit.html',
		      controller: 'visitorsController'
		    })
4. How you can take this id inside controller?
        
        $stateParams.id
5. How you can set another routing for invalid way?
	
	  	$urlRouterProvider.otherwise('/index')
6. Angular-ui bootsrap model
	
		http://angular-ui.github.io/bootstrap/#!#modal
