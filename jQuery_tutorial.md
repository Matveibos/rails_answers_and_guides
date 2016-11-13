1. How you can begin use jquery?
          
          <script type = "text/javascript" 
         src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
2. How to call a jQuery library functions?
          
          $(document).ready(function() {
             // do stuff when DOM is ready
          });
           
3. How you can did something on click?
          
          $("div").click(function() {alert("Hello, world!");});
4. How you can change css style of elements?
         
         $("p").css("background-color", "yellow");
5. How you can puts text inside tag?
          
         $("#div_id").text(title);
6. How you can take attribute of tag?
          
         var tag = $('#div_id').attr("title")
