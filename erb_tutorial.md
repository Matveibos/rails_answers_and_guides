1. How to add conditions for HTML class selecting?
    
    <div class="<%= 'ok' if @status == 'success' %>">
    <div class="<%= @success ? 'good' : 'bad' %>">
