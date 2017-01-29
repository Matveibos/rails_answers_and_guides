1. How to add references modele in angular?
          
          # first step in controller merge references params
            def create
              respond_with Moderation.create(visitor_params.merge(user_id: current_user.id))
            end

          # second step change default json view
          class Moderation < ApplicationRecord
            belongs_to :user

            def as_json(options = {})
              super(options.merge(include: :user))
            end
          end


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
8. How you can change rails routing on angular routing['ngRoute']?
          
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
9. How you can change rails routing on angular routing['ui.router']?
          
          # 1. install angular-ui-router with bower
          # 2. include to application.js
                     //= require angular-ui-router
          # 3. change application.html.erb
          ## ng-app and ui-view
                    <html ng-app="VisitorCenter">
                      <head>
                         ...
                      </head>
                      <body class="container">
                               <ui-view> </ui-view>
                      </body>
                    </html>
           # 4. add ui.router to app.js
                 angular
                    .module('VisitorCenter', ['ui.router'])
           # 5. add state 
                  angular
                    .module('VisitorCenter')
                    .config(function($stateProvider, $urlRouterProvider) {
                      $stateProvider
                        .state('products', {
                          url: '/products',
                          templateUrl: 'views/products.html',
                          controller: 'productsController'
                        })
                    });
10. How to add part of html template?
                    
             # application.html.erb
            <body class="container">
                     <div ng-include="'views/navigate.html'"></div>
                     <ui-view> </ui-view>
            </body>
##  Angular $resource
1. How you can include angular $resourse?
          
          1. angular.module('mainApp',['ngResource']); //mainApp is our main module
          2. //= require angular-resource  // in application.js
          
## Add DEVISE to RAILS with ANGULAR
          
          # 1. add gems
                    gem 'bower-rails'
                    gem 'devise'
                    gem 'angular-rails-templates' 
                    gem 'active_model_serializers'
                    gem 'bootstrap-sass'
                    
                    bundle install
          # 2. generate devise
                    rails generate devise:install
                    rails generate devise User
                    
                    # Devise only includes an email and password for registration, let's also add our own username to our                       # User model. We also want to have a unique index on our username.
                    
                    rails generate migration AddUsernameToUser username:string:uniq
                    
                    rails db:migrate
           # 3.  install angular, angular-ui-router, angular-devise with bower  
                    bower init
                    
                    # add to bower.json
                    "vendor": {
                      "name": "bower-rails generated vendor assets",
                      "dependencies": {
                        "angular": "v1.5.8",
                        "angular-ui-router": "latest",
                        "angular-devise": "latest"
                      }
                    }
                    
                    rake bower:install
           # 4. change id on nane when you see user
                    rails g serializer user
                    # add :username to app/serializers/user_serializer.rb 
                    class UserSerializer < ActiveModel::Serializer
                      attributes :id, :username
                    end

                    
           # 5. add :json respond for device
               # Add the following in config/application.rb directly under class Application < Rails::Application:
                      config.to_prepare do
                        DeviseController.respond_to :html, :json
                      end
           # 6. change application controller
                    class ApplicationController < ActionController::Base
                      protect_from_forgery with: :exception
                      before_action :configure_permitted_parameters, if: :devise_controller?
                      skip_before_action :verify_authenticity_token

                      respond_to :json

                      def index
                        render 'application/index'
                      end

                      protected

                      def configure_permitted_parameters
                        added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
                        devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
                        devise_parameter_sanitizer.permit :account_update, keys: added_attrs
                      end
                    end
           # 6. set root, and add application/index
                    # routes.rb
                    root 'application#index'
                    # create application/index.html.erb
                    
           # 7. change main application.html.erb for angular 
                    <!DOCTYPE html>
                    <html ng-app="myApp">
                      <head>
                        <title>VisitorsCenter</title>
                        <%= csrf_meta_tags %>

                        <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
                        <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
                      </head>

                      <body class="container">
                               <div ng-include="'views/nav.html'"></div>
                               <ui-view> </ui-view>
                      </body>
                    </html>
             # 8. add angular dependences to assets/js/application.js
                    //= require angular
                    //= require angular-ui-router
                    //= require angular-devise
                    //= require angular-rails-templates
                    //= require bootstrap-sprockets
             # 9. add bootstrap 
                    # create custom.scss
                    @import "bootstrap-sprockets";
                    @import "bootstrap";
             # 10. add module app.js
                    (function(){
                      angular
                        .module('myApp', ['ui.router', 'Devise', 'templates'])
                    }())
             # 11. add navigationController.js
                    angular
                    .module('myApp')
                    .controller('navigationController', function($scope, Auth){
                      $scope.signedIn = Auth.isAuthenticated;
                      $scope.logout = Auth.logout;
                      Auth.currentUser().then(function (user){
                        $scope.user = user;
                      });
                       $scope.$on('devise:new-registration', function (e, user){
                        $scope.user = user;
                      });

                      $scope.$on('devise:login', function (e, user){
                        $scope.user = user;
                      });

                      $scope.$on('devise:logout', function (e, user){
                        $scope.user = {};
                      });
                    });
              # 12. add authContoller.js
                    angular
                    .module('myApp')
                    .controller('authController', function($scope, $state, Auth){
                      $scope.login = function() {
                        Auth.login($scope.user).then(function(){
                          $state.go('home');
                        });
                      };

                      $scope.register = function() {
                        Auth.register($scope.user).then(function(){
                          $state.go('home');
                        });
                      };
                    });
               # 13. add router.js
                    angular
                    .module('myApp')
                    .config(function($stateProvider, $urlRouterProvider) {
                      $stateProvider
                         .state('home', {
                                  url: '/home',
                                  templateUrl: 'views/home.html'
                                })
                         .state('login', {
                          url: '/login',
                          templateUrl: 'views/_login.html',
                          controller: 'authController',
                          onEnter: ['$state', 'Auth', function($state, Auth) {
                            Auth.currentUser().then(function (){
                              $state.go('home');
                            })
                          }]
                        })
                        .state('register', {
                          url: '/register',
                          templateUrl: 'views/_register.html',
                          controller: 'authController',
                          onEnter: ['$state', 'Auth', function($state, Auth) {
                            Auth.currentUser().then(function (){
                              $state.go('home');
                            })
                          }]
                        })
                    });
                # 14. begin add views (views/nav.html) and views/home.html
                   # views/nav.html
                    <div class="collapse navbar-collapse pull-right" ng-controller="navigationController">
                      <ul class="nav navbar-nav">
                        <li ng-hide="signedIn()"><a href="#/login">Log In</a></li>
                        <li ng-hide="signedIn()"><a href="#/register">Register</a></li>
                        <li ng-show="signedIn()"><a href="#/">{{ user.username }}</a></li>
                        <li ng-show="signedIn()"><a ng-click="logout()">Log Out</a></li>
                      </ul>
                    </div>
                    
                    # views/home.html
                     Hello Home!
                # 15. add views/_login.html
                    <div class="page-header">
                      <h1>Log In</h1>
                    </div>

                    <form ng-submit="login()">
                      <div class="input-group">
                        <input type="email" class="form-control" placeholder="Email" ng-model="user.email">
                      </div>
                      <div class="input-group">
                        <input type="password" class="form-control" placeholder="Password" ng-model="user.password">
                      </div>
                      <input type="submit" class="btn btn-default" value="Log In">
                    </form>
               # 16. add views/_register.html
                    <div class="page-header">
                      <h1>Register</h1>
                    </div>

                    <form ng-submit="register()">
                      <div class="input-group">
                        <input type="email" class="form-control" placeholder="Email" ng-model="user.email">
                      </div>
                      <div class="input-group">
                        <input type="text" class="form-control" placeholder="Username" ng-model="user.username">
                      </div>
                      <div class="input-group">
                        <input type="password" class="form-control" placeholder="Password" ng-model="user.password">
                      </div>
                      <input type="submit" class="btn btn-default" value="Register">
                    </form>
