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

