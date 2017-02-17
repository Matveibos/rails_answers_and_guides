1. gitlab
2. trello
3. toggl
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
