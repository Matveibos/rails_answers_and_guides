1. How to add babel to your project?
      
      # check version
        node -v
        npm -v
      # initialize npm 
        npm init -y
      # install babel
      npm install babel-cli babel-core babel-preset-es2015 --save-dev
      # add to package.json ( src and dist - it's a folder )
        "scripts": {
          "build": "babel src -d dist --presets es2015"
        }
      # and run it inside console
       npm run build 
      # addition 
      # for inline monitoring and converting add watch
        "scripts": {
          "build": "babel src -d dist --presets es2015",
          "watch": "babel src -d dist --presets es2015 -w"
        }
      # and run 
        npm run watch

      
