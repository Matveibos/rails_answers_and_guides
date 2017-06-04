1. Rancak starting
  
         https://anadea.info/blog/ultimate-index-pages-by-ransack
2. How to start working with ransack?
        
        gem 'ransack'
        
        # controller
        def index
          @q = Book.ransack(params[:q])
          @books  = @q.result(distinct: true)
        end
        
        # view
        <%= search_form_for @q do |f| %>
          <%= f.search_field :id_eq %>
          <%= f.submit  %>
        <% end %>
 
3. What type you have to use for not exact value?
      
       <%= f.search_field :description_cont %>
