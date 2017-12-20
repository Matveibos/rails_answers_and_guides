1. Articles
      
        https://www.w3schools.com/tags/ref_canvas.asp
2. How to create a simple canvas?
      
          <canvas id="myCanvas"></canvas>

          <script>
            var canvas = document.getElementById("myCanvas");
            var ctx = canvas.getContext("2d");
            ctx.fillStyle = "#FF0000";
            ctx.fillRect(0, 0, 80, 80);
          </script>
          
3. How to add image by click on canvas?
          
          canvas.addEventListener('click', function(e) {
            var marker_image = new Image();
            marker_image.src = 'google_map_marker.png';
            
            # e.layerX - coordiante of canvas
            # marker_image.height / width
            
            ctx.drawImage(marker_image, e.layerX - marker_image.width / 2, e.layerY - marker_image.height);
          });
