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
          # patch (with params in second argument)
          <%= link_to "update", user_path(@user, user: { email: "new", name: "this_is_you" }), remote: true, method: :patch %>
5. How to send data with ajax request and one link?
      
          # coffee.file
          $ ->
            $("#my-id-template").on "ajax:success", (e, data, status, xhr) ->
              alert $(this).data("name")
          # html
          <%= link_to "update", user_path(@user, user: { email: "new", name: "this_is_you" }),
          remote: true, method: :patch, data: { name: 'hello'}, id: 'my-id-template' %>
              
          # for form 
          $(document).on 'ajax:success', 'form#new_coupon', (event, xhr, settings) ->
            alert 'jello'
  
6. How you can fix js function which doesn't work after ajax call?
          
          https://stackoverflow.com/questions/20962471/jquery-function-doesnt-work-after-ajax-call
