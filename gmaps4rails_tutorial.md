1. Where you can find the materials?
    
      https://apneadiving.github.io/
      
2. Script for markers updating?
        
        <script type="text/javascript" id="refresh_map">
          (function() {
            var markersData = <%= raw @hash.to_json %>;

            handler.removeMarkers(Gmaps.markers)

            Gmaps.markers = handler.addMarkers(markersData)
            handler.bounds.extendWith(Gmaps.markers);
            handler.fitMapToBounds();
          })();
        </script>
