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
