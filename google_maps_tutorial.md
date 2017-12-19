1. Articles
          
          1. Udacity google maps course
          https://www.udacity.com/course/google-maps-apis--ud864
          2. Their repo
          https://github.com/udacity/ud864

2. Standart template
  
          <!DOCTYPE html>
          <html>
            <head>
              <style>
                 #map {
                  height: 700px;
                  width: 100%;
                 }
              </style>
            </head>
            <body>
              <h3>My Google Maps Demo</h3>
              <div id="map"></div>
              <script>
                var map;
                function initMap() {
                  map = new google.maps.Map(document.getElementById('map'), {
                    center: {lat: 40.7413549, lng: -73.9980244},
                    zoom: 13
                  })
                }
              </script>

              <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBbvOCiQK3T45f5IlH38KNj1Nx-9Oj_Ofs&callback=initMap">
              </script>
            </body>
          </html>

3. How to add a marker?
          
          # after standart template inside initMap()
                  var tribeca = {lat: 40.719526, lng: -74.0089934};
                  var marker = new google.maps.Marker({
                    position: tribeca,
                    map: map,
                    title: 'Hello world'
                  })
3.1. How to add a draggable marker?
           
           # after standart template inside initMap()
                  var tribeca = {lat: 40.719526, lng: -74.0089934};
                  var marker = new google.maps.Marker({
                    position: tribeca,
                    draggable: true,
                    map: map,
                    title: 'Hello world'
                  })         
          
4. How to open a popup window after marker click?
          
          # after standart template inside initMap() and marker creating
          
                  var infowindow = new google.maps.InfoWindow({
                    content: "Hello my dear friends"
                  });

                  marker.addListener('click', function() {
                    infowindow.open(map, marker);
                  });
                  
5. How to add a marker by click on the map?
          
          # after standart template inside initMap()
                  map.addListener('click', function(e) {
                    new google.maps.Marker({
                      position: e.latLng,
                      map: map,
                      title: 'Hello world'
                    });
                  })
