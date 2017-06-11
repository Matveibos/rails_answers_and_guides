1. How to add bootstrap by link?
        
         <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"  rel="stylesheet">
         # add js scripts
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         
1. How you can include bootstrap inside rails app?
        
        # add bootstrap-sass gem to gemfile 
        gem 'bootstrap-sass'
        
        # touch new file 
        touch app/assets/stylesheets/custom.scss
        
        # import bootstrap inside new file
        @import "bootstrap-sprockets";
        @import "bootstrap";
        
        2. Adding the Bootstrap JavaScript library to application.js
        //= require jquery
        //= require jquery_ujs
        //= require bootstrap
        //= require turbolinks
        //= require_tree .
        
1. How you can install bootstap?

        got to http://getbootstrap.com/getting-started/ and download bootstrap.zip
        unzip this file in your project directory and include bootstrap.min.css
3. Can you show me the example of html file with bootstrap?
        
        <!DOCTYPE html>
        <html lang="en">
          <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">

            <title>Bootstrap 101 Template</title>
            <!-- Bootstrap -->
            <link href="css/bootstrap.min.css" rel="stylesheet">
          </head>
          <body>
            <h1>Hello, world!</h1>

            <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
            <!-- Include all compiled plugins (below), or include individual files as needed -->
            <script src="js/bootstrap.min.js"></script>
          </body>
        </html>
3. Can you show me what file include bootstrap directory?        
        
        bootstrap/
        ├── css/
        │   ├── bootstrap.css
        │   ├── bootstrap.css.map
        │   ├── bootstrap.min.css
        │   ├── bootstrap.min.css.map
        │   ├── bootstrap-theme.css
        │   ├── bootstrap-theme.css.map
        │   ├── bootstrap-theme.min.css
        │   └── bootstrap-theme.min.css.map
        ├── js/
        │   ├── bootstrap.js
        │   └── bootstrap.min.js
        └── fonts/
            ├── glyphicons-halflings-regular.eot
            ├── glyphicons-halflings-regular.svg
            ├── glyphicons-halflings-regular.ttf
            ├── glyphicons-halflings-regular.woff
            └── glyphicons-halflings-regular.woff2
            
-----------------------------------------button-----------------------------------

4. What 3 kind of creating button you know?  
        
          -  <a href=""> PRESS ME</a>
          
          -  <input type="button" name="Vlad" value="PRESS ME">
          
          -  <button>PRESS ME</button>
5. How you can create button in bootstrap?
        
        <a class="btn btn-default" href="#" >Link</a>
        OR
        <button class="btn btn-default">Button</button>
        OR
        <input class="btn btn-default" type="button" value="Input">
6. How you can change button color?
        
        class="btn btn-default" # white
        class="btn btn-primary" # blue
        class="btn btn-success" # green 
        class="btn btn-warning" # yellow
        
7. How you can change button size?
        
        class="btn btn-lg" # large
        class="btn btn-sm" # small
        class="btn btn-xs" # extra small
        
8. How you can add block level button? (button size on all block)
        
        class="btn btn-block"
        
9. How you can make active button?

        class="btn active"

-----------------------------------------image-----------------------------------

1. How you can change image size?
        
        <img src="" alt="" width=30% >
2. How you can make circle image?
        
        <img src="" class="img-circle">
-----------------------------------------navbar-----------------------------------

1. What does it mean 'navbar'?

        A navigation bar is a navigation header that is placed at the top of the page:
2. How you can create navbar? 
        
        <nav class="navbar navbar-default">
          ...
        </nav>
        # navbar-inverse will be with black foreground
3. How you can create navbar menu list?
        
        <ul class="nav navbar-nav">
          <li class="active"><a href="#">Home</a></li>
          <li><a href="#">Page 1</a></li>
          <li><a href="#">Page 2</a></li> 
        </ul>
4. How you can make fixed navbar position?
       
       # navbar-fixed-bottom, navbar-fixed-top
        <nav class="navbar navbar-default navbar-fixed-bottom">
          ...
        </nav>

6. How you can create dropdown menu?
        
        <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1
                <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Page 1-1</a></li>
                  <li><a href="#">Page 1-2</a></li>
                  <li><a href="#">Page 1-3</a></li> 
                </ul>
        </li>
7. How you can add some menu link to right?
        
        # navbar-right
        <ul class="nav navbar-nav navbar-right">
          ....
        </ul>
        
-----------------------------------------icon-----------------------------------       
        
1. How you can create caret symbol?
        
        <span class="caret"></span>  
2. User symbol?

        <span class="glyphicon glyphicon-user">
3. Log in symbol?
        
         <span class="glyphicon glyphicon-log-in">
        

1. How you can fix panel when you are scrolling?
        
        <div  data-spy="affix" data-offset-top="20">
          ...
        </div>
        
        
## ----------------- Bootstrap template ------------------------

1. Bootstrap table template vith edit and delete?
        
        http://bootsnipp.com/snippets/featured/bootstrap-snipp-for-datatable

2. Template table with user?
        
        http://bootsnipp.com/snippets/Ba4OQ



1. How to align content by center?
        
        # add text-center class
         .text-center
2. How you can define social media color?
        
        https://www.competethemes.com/blog/social-media-colors/
3. How to align button on center?
        
        # Wrap the Button in div with "text-center" class.
        <!-- correct -->
        <div class="col-md-4 text-center"> 
            <button id="singlebutton" name="singlebutton" class="btn btn-primary">Next Step!</button> 
        </div>
4. How to align button on left or right?        
        
        button.btn.pull-right
        button.btn.pull-left
        
5. How to create glyphicons close button with bigger size?
        
        span.glyphicon.glyphicon-remove.fa-2x.pull-right ng-click="cancel()"
## ----------------- Bootstrap mobile ------------------------
1. How to include mobile view for bootstap?
        
        # just need add meta tag
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
2. How you can use pull-right or pull-left only for mobile version?
        
        # you just need create new own class pull-lg-right, pull-sm-left
        @media (max-width: 500px) {
          .pull-sm-left {
            float: left;
          }
        }
        @media (min-width: 501px) {
          .pull-lg-right {
            float: right;
          }
        }
        # and add both to your tag
          .pull-lg-right.pull-sm-left
3. How you can show elements only for mobile or tabel version?
        
        # use this class with element which you want show
                .visible-xs-block
                .visible-sm-block
                .visible-md-block
                .visible-lg-block
        # don't want show
                .hidden-xs
                .hidden-sm
                .hidden-md
                .hidden-lg
        
4. Bootstrap3 sizes width and height?
        
        /* Extra Small */
        @media(max-width:767px){}

        /* Small */
        @media(min-width:768px) and (max-width:991px){}

        /* Medium */
        @media(min-width:992px) and (max-width:1199px){}

        /* Large */
        @media(min-width:1200px){}
5. How you can make a link on on one page?
        
        a href="#monuments-list" 
          | link
        div id="monuments-list"
        
       # if it does't work you can add
        a onclick="location.hash=''; location.hash='#map';"
6. How you can turn of ActiveAdmin style?
        
        # remove require_tree from application.css
                *= require_tree .
        # and add own style
                *= require book
