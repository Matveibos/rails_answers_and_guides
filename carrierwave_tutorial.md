0. tutorial about carrier wave
    
          https://code.tutsplus.com/tutorials/rails-image-upload-using-carrierwave-in-a-rails-app--cms-25183
1. How you can generate carrier wave folder?
        
        rails generate uploader Image
2. How to iclude carrier wave inside model?
    
       mount_uploader :image, ImageUploader
3. How you can specify tag for upload file?
    
        <%= f.file_field :image %>
4. How you can show uploded image?
        
        <%= image_tag @pet.image.thumb.url %>
5. How you can save file from link?
    
          # your user image field is called simply 'image'
          gravatar_url = "http://www.gravatar.com/avatar/#{Digest::MD5.new.update(current_user.email)}?s=512&d=identicon"
          @user.remote_image_url = gravatar_url
          @user.save 
