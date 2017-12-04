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
7. How you can invoke ajax error request?
          
          render plain: 'Unactivated coupon', status: :internal_server_error
9. Can you show me succes and error ajax request?
          
          $(document).on('ajax:success', 'form#new_coupon', (e, xhr, settings) ->
            alert 'success'
          ).on "ajax:error", 'form#new_coupon', (e, xhr, settings) ->
            alert 'error'
10. Multiply view and file uploader?
          
          https://stackoverflow.com/questions/21411988/rails-4-multiple-image-or-file-upload-using-carrierwave
          
11. How to send ajax request for updating part of page from js?
          
          # 1. include jquery
          # 2. Add File my_js.js
                $(document).ready(function () {
                    // will call refreshPartial every 3 seconds
                    setInterval(refreshPartial, 1000)
                });

                // calls action refreshing the partial
                function refreshPartial() {
                  $.ajax({
                    type: 'GET',
                    dataType: 'script',
                    url: '/users/refresh_part'
                  });
                 }
          # 3. Add to route.rb
                get 'users/refresh_part'
          # 4. Add to user controller
                
                  def refresh_part
                  # get whatever data you need to a variable named @data
                    render :refresh_part
                  end
         # 5. Add refresh_part.js.erb
             $("#part_you_want_to_refresh").html("<%= raw escape_javascript(render(partial: 'my_partial', data: @data)) %>")
         # 6. Add to your partial _my_partial.html.erb
             <div id="part_you_want_to_refresh">
              <% if @data.present? %>
                <%= @data %>
              <% end %>
             </div>
         # 7. Add somewhere in view <%= render "my_partial" %>
            
             

