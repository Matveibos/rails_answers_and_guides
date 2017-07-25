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
