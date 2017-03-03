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
7. Angular ui-modal with id
		
		https://lingohub.com/blog/2015/06/bootstrap-modal-window-custom-url-angularjs/
8. https://www.tutorialspoint.com/angularjs/index.htm
9. http://www.w3schools.com/angular/default.asp
10. https://docs.angularjs.org/tutorial
11. https://thinkster.io/a-better-way-to-learn-angularjs

10. How to use ref on state?
	
		a ui-sref="monuments-show({id: monument.id})"
		# inside controller
		$state.go('monuments-show', {id: monumentId})
11. How to add params to $state.go?

		$state.go("auctions", {"product": auction.product, "id": auction.id}); 
12. How you can know previous state?
	
		$rootScope.previousState;
		$rootScope.currentState;
		$rootScope.$on('$stateChangeSuccess', function(ev, to, toParams, from, fromParams) {
		    $rootScope.previousState = from.name;
		    $rootScope.currentState = to.name;
		    console.log('Previous state:'+$rootScope.previousState)
		    console.log('Current state:'+$rootScope.currentState)
		});
13. How to create link with full page reload?
	
		Links that contain target element
		Example: <a href="/ext/link?a=b" target="_self">link</a>


14. How to take only one value from api with RestAngular?
		
		  baseSettings = Restangular.one('settings');
		  baseSettings.get().then((settings) -> 
		    $scope.allSettings = settings;
		    debugger
		  )
15. How you can take variable outside Restangular request?
	
		  baseSettings = Restangular.one('settings')

		  baseSettings.get().then (response) -> 
		    $scope.settings = response
	          # it will be work
		  $scope.$watch "settings", () ->
		    console.log($scope.settings)
16. How to create and use own service?
		
		// popoover_service.js
		angular.module("monuments").factory('PopoverService', function($rootScope) {
		  var sharedService = {};

		  sharedService.message = '';

		  sharedService.prepForBroadcast = function(msg) {
		    alert(msg);
		  };

		  return sharedService;
		});
		
		// controller.coffee
		CemetaryModalController = ($scope, PopoverService) ->
		  PopoverSevice.message;
		  PopoverSevice.prepForBroadcast("hello");
		  # will be work 
		angular.module('monuments').controller "CemetaryModalController", ['$scope', 'PopoverService', CemetaryModalController]


17. How to create radion button with angular model?
	
		# use $parent.selected
		<label ng-repeat="category in categories">
		  <input type="radio" name="response" ng-model="$parent.selected" ng-value="category.name" />
		  {{category.name}}
		</label>
		{{selected}}
18. How to sort array with reverse order?
		
		# add true option
		ng-repeat=("category in categories | orderBy:'monuments.length':true")
19. Equivalent to target=“_self” programatically in angular
		
		# include $window
		$window.location.href = '/';
20. How you can check if data is valid?
		
		<form name="myForm">
		<input name="myInput" ng-model="myInput" type="email">
		</form>

		<p>The input's valid state is:</p>
		<h1>{{myForm.myInput.$valid}}</h1>
21. How you can disabled button if invalid?
		
		button.btn.btn-primary.btn-block ng-click="cancel()" type="submit" ng-disabled="myForm.myInput.$invalid" Подтвердить

22. How you can add attributes which will be check email if valid?
		
		ng-pattern="/^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/" required=""
23. Example of validation 
		
		https://gist.github.com/rnkoaa/8333940
24. How to add popOver?
		
		# add to controlller 
		
		  # it help open tooltip for complaint
		  $scope.complaintPopover =
		    isOpen: false
		    templateUrl: 'myPopoverTemplate.html'
		    title: 'Title'
		    complaint_text: ''
		    open: ->
		      $scope.complaintPopover.isOpen = true
		      return
		    close: ->
		      $scope.complaintPopover.isOpen = false
		      return
		# add button 
		  button.btn.btn-danger.pull-left ng-click="complaintPopover.open()" popover-is-open="complaintPopover.isOpen" popover-trigger="'outsideClick'" type="button" uib-popover-template="complaintPopover.templateUrl"  Пожаловаться 
	
		# add script to the page
		  script id="myPopoverTemplate.html" type="text/ng-template" 
		    span.glyphicon.glyphicon-remove.pull-right ng-click="complaintPopover.close()"
		    br/
		    form ng-submit="submit(monument)" 
		      .form-group
			label Введите жалобу: 
			textarea.form-control placeholder="Текст жалобы..." ng-model="complaintPopover.complaint_text" type="text" /
			br/
			div.text-center
			  button.btn.btn-primary ng-click="complaintPopover.close()" type="submit" value="Submit" 
			    | Отправить
23. How you can go to the previous state in angular?
		
		window.history.back()
24. How to add toggle swith button?
	
		<ANY ng-switch="expression">
		  <ANY ng-switch-when="matchValue1">...</ANY>
		  <ANY ng-switch-when="matchValue2">...</ANY>
		  <ANY ng-switch-default>...</ANY>
		</ANY>
