1. How you can create render with params?
      
      You just need send params from create and use them in controller
2. How to create redirect from www to non www version?

        before_action :redirect_from_www_to_non_www_host
        
        def redirect_from_www_to_non_www_host
          domain_parts = request.host.split('.')
          if domain_parts.first == 'www'
            redirect_to domain_parts[1..-1].join('.') + request.fullpath, status: 301
          end
        end

3. How you can make redirect if page does't exist?
      
        def set_project
          @project = Project.find(params[:id])
        rescue ActiveRecord::RecordNotFound
          flash[:alert] = "The project you were looking for could not be found."
          redirect_to projects_path
        end
4. How to generate controller inside namespace in rails?
      
       rails generate controller namespace_name/controller_name

5. Can you show me some example of respond to?
       
          respond_to do |format|
            format.html
            format.js
            format.json
            format.xml
          end
6. How to create new object when routing is nested?
            
            # routes
                  resources :students do
                      resources :awards
                  end
            # new
                  @award = @student.awards.build
            # create 
                  @award = @student.awards.build(award_params)
