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
