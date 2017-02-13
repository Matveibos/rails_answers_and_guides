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
