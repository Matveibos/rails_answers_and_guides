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
