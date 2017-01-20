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
