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
16. How you can run code only after image loading?
         
           $( "img" ).load(function() {

           });
17. Another way to run code only all image after loading with rails?
           
           $(document).ready(function(){
               var allimgs = $("img");
               var count = allimgs.length;

                $("img").one('load', function() {
                     count--;
                     if(count == 0) {
                        alert("all images are loaded");
                     }
                }).each(function() {
                     if(this.complete) $(this).load();
                });
            });
18. How to add jquery validation to rails?
          
          # habr tutorial https://habrahabr.ru/sandbox/19875/
         
          # https://github.com/jquery-validation/jquery-validation 
          # https://github.com/meowsus/jquery-validation-rails
          
          # add to view
          <script type="text/javascript">
            $(document).ready(function () {
              $("#submitted_brief").validate({
                rules: {
                  "submitted_brief[name]": {required: true},
                  "submitted_brief[position]": {required: true},
                  "submitted_brief[phone]": {required: true},
                  "submitted_brief[email]": {required: true}
                },
                messages: {
                  "submitted_brief[name]": "Please fill in the field",
                  "submitted_brief[position]": "Please fill in the field",
                  "submitted_brief[phone]": "Please fill in the field",
                  "submitted_brief[email]": "Please fill in the field"
                },
                errorClass: 'error-message error',
                errorElement: 'div'
              });
            });
          </script>
19. How to add JQuery to rails app?
          
          $(document).on('turbolinks:load', function() {
            $('#messages-table').append('hello, world!');
          });
20. How to catch the action by click enter inside form?
          
          $(document).on 'turbolinks:load', ->
            submit_message()

          submit_message = () ->
            $('#message_content').on 'keydown', (event) ->
              if event.keyCode is 13
                console.log(event)
