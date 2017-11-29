1. How to create another new and create action with ordinary?
      
      
            # routing
            resources :users do
              collection do
                get 'another_new'
                post 'another_create'
              end
            end
            # controller
              def new #default action
                ...
              end

              def another_new
                ...
              end

              def create
                ...
              end

              def another_create
                ...
              end
            # view
             <%= f.submit "Special Action", formaction: another_create_users_path %>
             
2. How you can create nested routing? And what specific helpers will be createn?
            
            # first
            resource :projects do 
              resource :tickets
            end
            
            # helpers
            projects/:id/tickets => project_tickets_path
            projects/:id/tickets/new => new_project_ticket_path
            projects/:id/tickets/:tick_id/edit => edit_project_ticket_path
            projects/:id/tickets/:tick_id => project_ticket_path

3. How you can watch all existing routes?
            
            rails routes
4. How you can create route to custom controller action?

            get 'heartbeat' => "custom_controller#heartbeat"
            # or
            get 'heartbeat', to "custom_controller#heartbeat"
            
            # /hearbeat
            # or 
            get 'custom_controller/heartbeat', as: 'heartbeat'
            # /custom_controller/heartbeat
            
5. How you can create redirect from all another routes to one route?
            
            get '*path' => 'home#index'
6. How to add routing without link on id (like /profile)?
            
            # singular for
            resource :user do
              get :my_method, on: :member
            end
            # controller/users define my_method

1. how you can see all route?
         
         rails routes
1. How you can set root route?
         
         root 'controller_name#method_name'
2. How you can set simple get action?
         
         get 'controller_name/method_name'
2. How you can set shortest name?
         
         get '/method_name', to: 'controller_name#method_name'
2. How you can add all action for User?
         
         resources :users
3. What is the difference between root_path and root_url?
         
         root_path -> '/'
         root_url  -> 'http://www.example.com/'
4. How you can change standart action_path?
         
          get '/about', to: 'static_pages#about', as: 'ab'
          #=> was about_path, will be ab_path
5. How you can find specific name in routes?
         
         rake routes | grep ressource_name
6. How you can set default another format for answer (json for example)?
         
         resources :visitors, only: [:index, :create, :destroy], defaults: {format: :json}
 
