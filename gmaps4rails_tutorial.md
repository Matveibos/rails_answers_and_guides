1. Where you can find the materials?
    
      https://apneadiving.github.io/
      
2. Script for markers updating?
        
        <script type="text/javascript" id="refresh_map">
          (function() {
            var markersData = <%= raw @hash.to_json %>;

            handler.removeMarkers(Gmaps.markers)

            Gmaps.markers = handler.addMarkers(markersData)
          })();
        </script>
        
3. How to set up clusterization for different size of zoom?
      
        handler = Gmaps.build('Google', {
          markers: {
            clusterer: {
              maxZoom:  17,
              gridSize: 50
            }
          }
        });
4. How to set up center coordiantes?
        
        handler.map.centerOn([53.928143, 27.685503]);

5. How to set up Zoom?
    
        handler.buildMap({ provider: { Zoom: 19 }})
