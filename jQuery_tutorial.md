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
          # multiply
          selector.css( {key1:val1, key2:val2....keyN:valN})
5. How you can puts text inside tag?
          
          $("#div_id").text(title);
6. How you can take attribute of tag?
          
          var tag = $('#div_id').attr("title")
7. How you can set new argument value?
          
          $('a').attr('href', 'google.com')
8. How you can add class to tag?
          
          $("#myid").addClass("highlight");
9. How you can replace tag?
          
          $('div').replaceWith("<h1>JQuery is Great</h1>");
10. How you can delete tag?

           $('div').remove( );
11. How you can Inserting DOM elements?
          
           $('div').before('<div class="div"></div>' );
           $('div').after('<div class="div"></div>' );
12. How you can work with curent element?
          
          # this
          $("div").click(function () {
               $(this).before('<div class="div"></div>' );
            });
13. How you can set event listener?
          
             $('div').bind('click', function( event ){
               alert('Event type is ' + event.type);
            });
14. How you can show and hide elements?
          
           $(".mydiv").show( 1000 );
           $(".mydiv").hide( 1000 );
15. How you can run js code only after doom loading full?
          
           $(window).load(function () {

           });
