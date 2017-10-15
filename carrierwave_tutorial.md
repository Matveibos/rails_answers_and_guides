0. tutorial about carrier wave
    
          https://code.tutsplus.com/tutorials/rails-image-upload-using-carrierwave-in-a-rails-app--cms-25183
1. How you can add image file field?
       
        gem 'carrierwave', '~> 0.10.0'
        gem 'mini_magick', '~> 4.3'
        
        rails g migration AddImageColumnToBooks image:string
        
        rails generate uploader Image
        
        # uncomment
          include CarrierWave::MiniMagick
          version :thumb do
            process :resize_to_fit => [50, 50]
          end
          
        # add to your model with image field
          mount_uploader :image, ImageUploader
        
        # inside simple form 
        <%=f.input :image, :label => 'Your avatar please' %>
          
        # inside view
        <% if book.image&.thumb&.url != nil %>
          <td><%= image_tag book.image&.thumb&.url %></td> 
        <% end %>
        
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
6. How you can create link for download file?
        
         mount_uploader :my_file, ImageUploader
         
         = link_to "Download File", my_file.url, download: File.basename(my_file.url)
7. How to set standart size for all image?
        
        process resize_to_limit: [400, 400]


## FOG

1. How to add fog for heroku?

        # add gem fog
        gem 'fog'
        
        # add config/initializers/carrierwave.rb
        if Rails.env.production?
          CarrierWave.configure do |config|
            config.fog_credentials = {
              # Configuration for Amazon S3
              :provider              => 'AWS',
              :aws_access_key_id     => ENV['S3_ACCESS_KEY'],
              :aws_secret_access_key => ENV['S3_SECRET_KEY'],
              :region                => ENV['S3_REGION'] // 'eu-central-1'
            }
            config.fog_directory     =  ENV['S3_BUCKET']
          end
        end
        
        # add storoge fog for uploader
          if Rails.env.production?
            storage :fog
          else
            storage :file
          end
        
        # add key for heroku 
        heroku config:set S3_ACCESS_KEY=<access key>
        heroku config:set S3_SECRET_KEY=<secret key>
        heroku config:set S3_BUCKET=<bucket name>
        
        # create acount on amazon 
            1. https://aws.amazon.com/ru/
            2. Get key and secret_key https://console.aws.amazon.com/iam/home?#/security_credential
            3. create bucket https://s3.console.aws.amazon.com/s3/home?region=us-east-2
