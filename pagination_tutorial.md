1. What gem you can use for pagiantion?
      
        gem 'kaminari'
2. How you can use kaminari for pagination?
        
        # controller
        def index
          @books =  Book.all.page(params[:page]).per(15)
        end
        
        # index.html.erb
        <%= paginate(@books) %>
