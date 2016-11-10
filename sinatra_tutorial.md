1. How you can start sinatra?
        
        require 'sinatra' 
        get '/' do 
          "Just Do It" 
        end
2. How you can stop sinatra server?
        
        ctr + c
        # if it already late write fg (foreground)
3. Where you have to store .slim files?
        
        into views folder 
4. What sign use to evaluate a Ruby variable in slim?

        = @rub_variable
5. Example of dinamic content in sinatra (take params)
        
        get '/:task' do
          @task = params[:task]
          slim :task
        end
6. Example of form for post request in slim 
        
        form action="/" method="POST"
            input type="text" name="task"
            input.button type="submit" value="New Task >>"
        
        post '/' do
          slim :example_above
        end
7. How you can call erb file?
        
        get '/' do
          erb :index
        end
8. 
