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
4. How you can use ransack with enumerize?
      
      
        <%= f.select :genre_eq, Book.genre.values, include_blank: true %>
5. How to use ransac with globolize?
        
        # name, company just a field from model
        translations_name_cont
        translations_company_cont
        translations_name_or_translations_company_cont        
