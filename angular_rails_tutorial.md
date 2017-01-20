1. How to include angular to rails? (first method)
          
          1. rails new RailsName --skip-javascript
          2. Create app/assets/javascripts/application.js
          3. Add //= require_tree . to application.js
          4. Add app.js with angular code
          5. In the layout application, add <%= javascript_include_tag 'application' %>
          6. Add bootstrap and angular link
          <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
          <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>
          <script src="//cdnjs.cloudflare.com/ajax/libs/angular-ui-router/0.2.10/angular-ui-router.js"></script>
          7. Add there all another angular html code
          8.  Add to main controller
            def angular
              render 'layouts/application'
            end
          9. root 'application#angular'
2. How to install angular with bower?
          
          1. bower init (skipp all)
          2. create .bowerrc and add there
                    {
                      "directory":"vendor/assets/bower_components"
                    }
          3. bower install angular angular-ui-router bootstrap --save
          4. add to application.js 
                    //= require angular
                    //= require angular-ui-router
                    //= require_tree .
3. Why you need using 'angular-rails-templates' gem and how include them?
          
          Gem angular-rails-templates takes html templates and compiles them into javascript files that insert our templates into Angular's $templateCache. This allows us to move our templates into the app/assets/javascripts folder.
          # Gemfile
            gem 'angular-rails-templates'
          # application.js
            //= require angular
            //= require angular-rails-templates
          # app.js
                 angular.module('flapperNews', ['ui.router', 'templates'])
                           
