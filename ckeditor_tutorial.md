1. How you can add row with cktext?
      
        <div>
          <%= f.cktext_area :body, rows: 10 %>
        </div>
2. Good article about ck 
        
        https://richonrails.com/articles/getting-started-with-ckeditor
        
3. Stable version of ckeditor
      
       gem 'ckeditor', github: 'galetahub/ckeditor'
4. How to remove default p tags?
      
          ready = ->
            $('.ckeditor').each ->
              CKEDITOR.config.enterMode = CKEDITOR.ENTER_BR
              CKEDITOR.config.forcePasteAsPlainText = true

          $(document).ready(ready)
          $(document).on('page:load', ready)
