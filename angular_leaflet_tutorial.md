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
        
4. How to add clasterization to map?
       
        # add css and js script
        
            script src="https://rawgit.com/Leaflet/Leaflet.markercluster/leaflet-0.7/dist/leaflet.markercluster.js" 
            link href="https://rawgit.com/Leaflet/Leaflet.markercluster/master/dist/MarkerCluster.css" rel="stylesheet" /
            link href="https://rawgit.com/Leaflet/Leaflet.markercluster/master/dist/MarkerCluster.Default.css" rel="stylesheet" /
            
        # in controller add 
              angular.extend $scope,
                center:
                  lat: 51.505
                  lng: -0.09
                  zoom: 2
                  autoDiscover: true
                defaults:
                  zoomControlPosition: 'bottomleft'
                  scrollWheelZoom: false
                layers:
                  baselayers: mapbox_light:
                    name: 'Mapbox Light'
                    url: 'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png'
                    type: 'xyz'
                  overlays:
                    monument:
                      name: 'Monument'
                      type: 'markercluster'
                      visible: true
        # view add layers
            leaflet lf-center="center" markers="markers" layers="layers" width="100%" height="480px"
        # in markers add layer
                    coordinates.push({lat: 2, lng: 3, message: 'name', layer: 'monument'})

5. How you can hide layer control?
       
            .leaflet-control-layers {
              visibility: hidden !important;
            }
