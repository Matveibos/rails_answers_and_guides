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
                           
4. How you can overwrite model and include dependent data in json?
          
          class Post < ActiveRecord::Base
            has_many :comments

            def as_json(options = {})
              super(options.merge(include: :comments))
            end
          end
5. How to add routing to two binding controller?
           
           resources :posts, only: [:create, :index, :show] do
              resources :comments, only: [:show, :create] do
                member do
                  put '/upvote' => 'comments#upvote'
                end
              end

              member do
                put '/upvote' => 'posts#upvote'
              end
            end
6. How to add controllers for angular?
          
          rails generate controller Posts --skip-assets --skip-template-engine
          # add to application controller
           respond_to :json
          # in post controller
            def index
              respond_with Post.all
            end

            def create
              respond_with Post.create(post_params)
            end

            def show
              respond_with Post.find(params[:id])
            end

            def upvote
              post = Post.find(params[:id])
              post.increment!(:upvotes)

              respond_with post
            end

            private
            def post_params
              params.require(:post).permit(:link, :title)
            end
7. How you can return back methods respond_to, respond_with?
          
          # ADD gem "responders"
          
          $ bundle install
          $ rails g responders:install
8. How you can change rails routing on angular routing?
          
          # application.html.erb
          ## add ng-app, ng-view and delete yeild
          <html ng-app="ProductCenter">
            <head>
               ...
            </head>
            <body class="container" ng-view>
            
            </body>
          </html>
          
          ## application.js 
          ///= require angular-route
          
          ## app.js
          var productCenter = angular.module("ProductCenter", ['ngRoute','templates']);
          productCenter.config([
            '$routeProvider', function($routeProvider) {
              $routeProvider.when('/products',{
                templateUrl: 'views/products.html',
                controller: 'productsController'
              }); 
            }
          ]);

##  Angular $resource
1. How you can include angular $resourse?
          
          1. angular.module('mainApp',['ngResource']); //mainApp is our main module
          2. //= require angular-resource  // in application.js

