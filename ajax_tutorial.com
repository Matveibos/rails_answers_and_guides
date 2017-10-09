1. How to create simple rails project with ajax?
          
          https://www.tutorialspoint.com/ruby-on-rails/rails-and-ajax.htm
2. How to create ajax form for rails?
          
          <%= form_with(model: @article) do |f| %>
            ...
          <% end %>

3. How to add for this form post or patch action?
          
          # post
          <%= form_with(model: @article, url: articles_path, method: :post) do |f| %>
            ...
          <% end %>
          
          #patch
          <%= form_with(model: @article, url: edit_article_path(@article), method: :patch) do |f| %>
            ...
          <% end %>
4. How to add ajax request for links?
          
          # post
          <%= link_to "an article", @article, remote: true %>
          # delete
          <%= link_to "delete", User.first, remote: true, method: :delete %>
