1. Баг при нажатии несколько раз на карту, появляется всплывающее 2 окна
2. Когда жмешь не на кнопку закрыть окна не закрыватется и не возвращает на нужный стейт
3. При обновлении страницы проподает выбранный язык 
4. Всё можно использовать проще через window.history.back
5. 
vlad_hilko gitlab 
rails api
ng-click="showMapModal(monument)"
ng-click="showMapModal(cemetaries)"

# hello

                if $state.current.url.includes("/monuments/:id/map")
                  $state.go('monuments-show', {id: currentId})
                else if $state.current.url.includes("/cemetaries/:id/map")
                  $state.go('cemetaries-show', {id: currentId})
                else if $state.params.id == 'map' && $state.current.url.includes("monuments")
                  $state.go('monuments')
                else if $state.params.id == 'map' && $state.current.url.includes("cemetaries")
                  $state.go('cemetaries')
# switch not working
                  switch $state.current.url
                  when '/monuments/:id'
                    if $state.params.id == "map"
                      baseMonument.getList().then (response) ->
                        $scope.monuments = response
                        $scope.showMapModal($scope.monuments)
                    else
                      monumentId = parseInt($state.params.id)
                      ModalService.openMonumentModal(monumentId)
                  when 'monuments/:id/map'
                    monumentId = parseInt($state.params.id)
                    baseMonument = Restangular.one('monuments', monumentId)
                    baseMonument.get().then (response) ->
                      $scope.monument = response
                      ModalService.openMapModal([$scope.monument])
                      
                      
https://www.tutorialspoint.com/coffeescript/switch_statement_in_coffeescript.html

                switch day
                when "Mon" then go work
                when "Tue" then go relax
                when "Thu" then go iceFishing
                when "Fri", "Sat"
                  if day is bingoDay
                    go bingo
                    go dancing
                when "Sun" then go church
                else go work
# working switch 

    $rootScope.previousState
    $rootScope.currentState
    $rootScope.$on('$stateChangeSuccess', (ev, to, toParams, from, fromParams) ->
      $rootScope.previousState = from.name;
      $rootScope.currentState = to.name;

      console.log('Previous state:'+$rootScope.previousState)
      console.log('Current state:'+$rootScope.currentState)
    )
# previuos state example
.state('monuments-map',
      url: '/monuments/map'
      controller: 'MonumentController'
      templateUrl: 'app/templates/monuments/index.html'
  ).state('cemetaries-map',
      url: '/cemetaries/map'
      controller: 'CemetaryController'
      templateUrl: 'app/templates/cemetaries/index.html'
  )
# last if 
    # Modal opening
      Modal opening
      if $state.current.url == '/cemetaries/:id'
        if $state.params.id == "map"
          baseCemetary.getList().then (response) ->
            $scope.cemetaries = response
            $scope.showMapModal($scope.cemetaries)
        else
          cemetaryId = parseInt($state.params.id)
          ModalService.openCemetaryModal(cemetaryId)

      if $state.current.url == '/cemetaries/:id/map'
        cemetaryId = parseInt($state.params.id)
        baseCemetary = Restangular.one('cemetaries', cemetaryId)
        baseCemetary.get().then (response) ->
          $scope.cemetary = response
          ModalService.openMapModal([$scope.cemetary])
1. sourcery
      
       https://www.sitepoint.com/magical-authentication-sorcery/
2. Template for bootrap login 
        
           http://bootsnipp.com/snippets/featured/login-form-layered
           http://bootsnipp.com/snippets/featured/modal-login-with-jquery-effects
           http://bootsnipp.com/snippets/featured/yahoo-login-style
           http://bootsnipp.com/snippets/D25A4
           http://bootsnipp.com/snippets/vryPA
           http://bootsnipp.com/snippets/M3MPP
           http://azmind.com/bootstrap-registration-forms-3-free-responsive-templates/
           
3. 
                        
                        angular
                  .module('monuments')
                  .controller('AuthenticationController', function($scope, $state, $uibModalInstance, Auth){
                    $scope.login = function() {
                      Auth.login($scope.user).then(function(){
                        $state.go('root');
                      });
                    };

                    $scope.register = function() {
                      Auth.register($scope.user).then(function(){
                        $state.go('root');
                      });
                    };

                    $scope.cancel = function() {
                      $uibModalInstance.close();
                    }
                  });

4. Temp navigation template
          
          angular
                .module('monuments')
                .controller('NavigationController', function($scope, $state, Auth, ModalService){
                  $scope.signedIn = Auth.isAuthenticated;
                  $scope.logout = Auth.logout;
                  Auth.currentUser().then(function (user){
                    $scope.user = user;
                  });
                   $scope.$on('devise:new-registration', function (e, user){
                    $scope.user = user;
                  });

                  $scope.$on('devise:login', function (e, user){
                    $scope.user = user;
                  });

                  $scope.$on('devise:logout', function (e, user){
                    $scope.user = {};
                  });

                  $scope.showAuthModal = function() {
                    ModalService.openAuthModal();
                  }
                  $scope.showRegisterModal = function() {
                    ModalService.openRegisterModal();
                  }

                });
5. Template for state registration
       
       .state('login'
            url: '/login'
            templateUrl: 'app/templates/authentication/login.html'
            controller: 'AuthenticationController'
            onEnter: ['$state', 'Auth', ($state, Auth) ->
              Auth.currentUser().then(() ->
                $state.go('root');
              )
            ]
        ).state('register'
            url: '/register'
            templateUrl: 'app/templates/authentication/register.html'
            controller: 'AuthenticationController'
            onEnter: ['$state', 'Auth', ($state, Auth) ->
              Auth.currentUser().then(() ->
                $state.go('root');
              )
            ]
        )
6. Hower

         https://github.com/tombatossals/angular-leaflet-directive/issues/1144
7. Lifelets
        
        http://leafletjs.com/examples/quick-start/
8. How you can get access to Leaflet map
    
        leafletData.getMap().then(
         function (map) {
             alert('hello')
         }
       );
9. Example of my thing
      
            angular
        .module('monuments')
        .controller("EventsController", [ '$scope', '$state', 'Restangular', 'ModalService', 'leafletData',function($scope, $state, Restangular,  ModalService, leafletData) {
          angular.extend($scope, {
              center: {
                  lat: 40.095,
                  lng: -3.823,
                  zoom: 6
              },
              defaults: {
                  scrollWheelZoom: false
              },
              events: {
                  map: {
                      enable: ['zoomstart', 'drag', 'click', 'mousemove', 'mouseover', 'mouseout'],
                      logic: 'emit'
                  }
              },
              markers: {
                  Madrid: {
                      lat: 40.095,
                      lng: -3.823,
                      message: "This is Madrid. But you can drag me to another position",
                      focus: false,
                      draggable: true
                  },
                  Barcelona: {
                      lat: 41.38,
                      lng: 2.18,
                      message: "This is Barcelona. You can't drag me",
                      focus: false,
                      draggable: false
                  }
              }
          });

          // leafletData.getMap().then(
          //     function (map) {
          //         alert('hello')
          //     }
          // );

          baseCemetary = Restangular.all('cemetaries')
          baseCemetary.getList().then(function(response) {
            $scope.cemetaries = response
          })

          $scope.eventDetected = "No events yet...";

          $scope.$on('leafletDirectiveMap.zoomstart', function(event){
              $scope.eventDetected = "ZoomStart";
          });

          $scope.$on('leafletDirectiveMap.drag', function(event){
              $scope.eventDetected = "Drag";
          });

          // $scope.$on('leafletDirectiveMap.click', function(event){
          //     $scope.eventDetected = "Click";
          //     console.log(this);
          // });
          // add new marker by click
          // $scope.markers = new Array();
          // $scope.$on("leafletDirectiveMap.click", function(event, args){
          //     var leafEvent = args.leafletEvent;
          //     $scope.markers.push({
          //         lat: leafEvent.latlng.lat,
          //         lng: leafEvent.latlng.lng,
          //         draggable: true
          //     });
          // });
          //add all cemetaries marker on example map
          $scope.markers = new Array();
          $scope.$on("leafletDirectiveMap.click", function(event, args){
            $scope.$watch("cemetaries", function(){
              angular.forEach($scope.cemetaries, function (item) {
                $scope.markers.push({lat: parseInt(item.place.latitude), lng: parseInt(item.place.longitude), message: item.name })
              })
            })
          });

          $scope.$on('leafletDirectiveMap.mousemove', function(event){
              $scope.eventDetected = "MouseMove";
          });

          $scope.$on('leafletDirectiveMarker.click', function(event, args){
            $scope.$watch("cemetaries", function(){
              var currentLat = parseInt(args.model.lat)
              var currentLng = parseInt(args.model.lng)
              angular.forEach($scope.cemetaries, function (item) {
                 if(currentLat === parseInt(item.place.latitude) && currentLng === parseInt(item.place.longitude)) {
                   console.log(item);
                   //ModalService.openCemetaryModal(item.id)
                   // $state.go("cemetaries-show", {"id": item.id})
                 }
              })
              // ModalService.openCemetaryModal($scope.cemetaries[0].id)
              // $state.go("cemetaries", {"id": $scope.cemetaries[0].id}); 
            })
          });



          $scope.$on('leafletDirectiveMarker.mouseover', function(event, args){
              console.log('I am over!');
              var popup = L.popup({ offset: L.point(0, -28)})
                          .setLatLng([args.model.lat, args.model.lng])
                          .setContent(args.model.message)

               leafletData.getMap().then(function(map) {
                 popup.openOn(map);
              });
          });

          $scope.$on('leafletDirectiveMarker.mouseout', function(event){
            leafletData.getMap().then(function(map) {
              map.closePopup();
            });
          });


      }]);
10. Take a big date 
      
        $scope.$on 'leafletDirectiveMarker.click', (event, args) ->
          if $state.current.url.includes('monuments')
            current_state_watch = 'monuments'
            current_state_scope = $scope.monuments
          else if $state.current.url.includes('cemetaries')
            current_state_watch = 'cemetaries'
            current_state_scope = $scope.cemetaries

          $scope.$watch current_state_watch, ->
            currentLat = undefined
            currentLng = undefined
            # debugger
            currentLat = parseInt(args.model.lat)
            currentLng = parseInt(args.model.lng)
            angular.forEach current_state_scope, (item) ->
              if currentLat == parseInt(item.place.latitude) and currentLng == parseInt(item.place.longitude)
                # console.log item
                # ModalService.openCemetaryModal(item.id)
                $state.go(current_state_watch + "-show", {"id": item.id})
              return
            return
          return
11. sikrets key

          Карта с маркерами
          development:
            secret_key_base: 361ad71931eb4d38a6d5accf9776c9b3ba875fcaf07d9bec27b651ae2d69142aa37066f
            vk: 
              app_id:
              app_token:
12. Полиморфные связи 
          
          https://habrahabr.ru/post/261835/
          
13. Ui bootstrap close on outisde click
          
         # just add popover-trigger="'outsideClick'"
        
        <div id="new_button" uib-popover-template="plusButtonURL" popover-trigger="'outsideClick'" >+</div>
14. How you can hide popower by click on button?
          
          # angular file
          app = angular.module('ui.bootstrap.demo', ['ui.bootstrap']);

            app.controller(
              'myPopoverCtrl', ['$scope',
                function($scope) {

                  // query popover
                  $scope.myPopover = {

                    isOpen: false,

                    templateUrl: 'myPopoverTemplate.html',

                    open: function open() {
                      $scope.myPopover.isOpen = true;
                      $scope.myPopover.data = 'Hello!';
                    },

                    close: function close() {
                      $scope.myPopover.isOpen = false;
                    }
                  };

                }

              ]);
              
              # html file
              <body 
                  ng-app="ui.bootstrap.demo" 
                  class="container">

              <button 
                      class="btn btn-danger" 
                      ng-controller="myPopoverCtrl" 
                      popover-template="myPopover.templateUrl" 
                      popover-title="This is a popover" 
                      popover-placement="bottom" 
                      popover-is-open="myPopover.isOpen" 
                      ng-click="myPopover.open()">Click me!</button>

              <script type="text/ng-template" 
                      id="myPopoverTemplate.html">
                <h2 ng-bind="myPopover.data" />
                <button class="btn btn-success" 
                        ng-click="myPopover.close()">Close me!</button>

              </script>

            </body>
15. How to add something with polimorfic?
          
          Complaint.create(content: "hello", complaint_entity: Monument.last)
16. Do you know how create service for controler?
          
          http://stackoverflow.com/questions/9293423/can-one-controller-call-another
17. Tempalte for my doesn't working service

          angular.module("monuments").factory('PopoverService', function($scope) {
          var sharedService = {};

          sharedService.message = '';

          // sharedService.complaint_popover = {
          //   isOpen: false,
          //   templateUrl: 'myPopoverTemplate.html',
          //   title: 'Title',
          //   complaint_text: '',
          //   open: function open() {
          //     $scope.complaintPopover.isOpen = true
          //   },
          //   close: function close() {
          //     $scope.complaintPopover.isOpen = false
          //   }
          // };

          sharedService.complaint_popover = function(local_scope) {
            return {
              isOpen: false,
              templateUrl: 'myPopoverTemplate.html',
              title: 'Title',
              complaint_text: '',
              open: function open() {
                local_scope.complaintPopover.isOpen = true
              },
              close: function close() {
                local_scope.complaintPopover.isOpen = false
              }
            };
          };

          return sharedService;
        });
18. title for popup 

         popover-title="Жалоба"
19. read about polimorfic has_many 
        
        http://cobwwweb.com/rails-has-many-through-polymorphic-association
        # add another link
        http://stackoverflow.com/questions/6997141/rails-has-many-through-with-polymorphic-association-will-this-work
        # with picture 
        http://stackoverflow.com/questions/9361641/how-to-set-up-a-polymorphic-has-many-through
20. Choosen for your categories

        https://github.com/leocaseiro/angular-chosen
21. Add choosen directly 
        
        Remember, everything what you install with bower you have to include directly for example i forget require chosen 
        #= require chosen/chosen
        Don't forget added css code from bower
        @import "chosen/chosen";
22. Article about angular custom filter
        
        https://toddmotto.com/everything-about-custom-filters-in-angular-js/
23. How to add multiply filter?
        
        http://stackoverflow.com/questions/18792039/angularjs-multiple-filter-with-custom-filter-function
24. Example of not exactly returned value

          var itemCategoryNameLength = item_category_name.length;
          for (var j = 0; j < itemCategoryNameLength; j++) {
            if(chosen_category_name.includes(item_category_name[j])){
              filtered.push(item);            
              break;
            }
          }
25. How to make radio button 
        
        http://bootsnipp.com/snippets/xNGMB
26. Example of three points
        
          span style="margin-left: 20px" ng-click="hello"
           |     ... 
27. Another example 

              label.radio-inline.without_circle ng-show=("{{$index == 5}}")
                input name="optradio" ng-model="$parent.show_all_categorories" ng-value="true" type="radio" /
                span
                  | ...
28. Git pull origin base
              
              # if you want add 
              git pull --rebase origin master
29. Rspec check test delivery
          
          http://stackoverflow.com/questions/7284413/how-to-test-with-rspec-if-an-email-is-delivered              
30. Page for self-references assocoation
          
          https://collectiveidea.com/blog/archives/2015/07/30/bi-directional-and-self-referential-associations-in-rails
          http://railscasts.com/episodes/163-self-referential-association
          https://coderwall.com/p/4d2utg/self-referencing-association-in-active-record-and-its-factories
          # condition
          https://teamtreehouse.com/community/unknown-key-conditions
31. Rails style gaide
      
         https://github.com/arbox/ruby-style-guide/blob/master/README-ruRU.md#consistent-classes
         https://github.com/bbatsov/rails-style-guide
