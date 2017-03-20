1. How to mode zoom button in another corner?
      
        # inside controller
        angular.extend $scope, 
          defaults:
            zoomControlPosition: 'topright'
            scrollWheelZoom: false
        # inside view include defaults
        leaflet lf-center="center" markers="markers" height="500px" width="auto" defaults="defaults"
2. How to get current map?
      
        $scope.getMyMap = () ->
            leafletData.getMap().then (map) ->
            console.log map
