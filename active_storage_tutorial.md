Articles


        https://evilmartians.com/chronicles/rails-5-2-active-storage-and-beyond
        https://api.rubyonrails.org/files/activestorage/README_md.html
        # rspec 
        https://medium.com/craft-academy/rails-attachments-with-active-storage-e8c9e726ab0d
        # How to attach file to amazon s3?
        https://medium.com/alturasoluciones/setting-up-rails-5-active-storage-with-amazon-s3-3d158cf021ff
        # How to attach file to the google cloud stage?
        https://medium.com/@pjbelo/setting-up-rails-5-2-active-storage-using-google-cloud-storage-and-heroku-23df91e830f8
        
0. How to add active_storage to the project?

```ruby
        rails active_storage:install
        rails db:migrate
            
        class User < ApplicationRecord
          has_one_attached :any_file_name
        end     
```
        
        

1. How to show attached file?
        
        # name of attached file
        archive.xml_archive.filename.to_s
        # url to the attached file
        rails_blob_path(archive.xml_archive)
        # link to the attached file
        link_to 'File', rails_blob_path(archive.xml_archive)
        
2. How to get content fron the donwloaded file?
        
        archive.xml_archive.download
3. How to check if file is attached?
        
        archive.xml_archive.attached?
