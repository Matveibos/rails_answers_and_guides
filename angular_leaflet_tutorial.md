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
3. How to set id to map and firing event?
        
        # add id to leaflet
            leaflet id="myMap" lf-center="center" markers="markers"
        # id is myMap, adding his to controller
            $scope.$on 'leafletDirectiveMarker.myMap.mouseout', (event) ->
        # how you can return map now?
            leafletData.getMap("myMap").then (map) ->
        
