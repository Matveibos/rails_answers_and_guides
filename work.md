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

