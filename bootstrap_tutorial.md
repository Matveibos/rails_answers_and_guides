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
        
        
        
        
        
        
