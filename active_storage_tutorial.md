Articles


        https://evilmartians.com/chronicles/rails-5-2-active-storage-and-beyond
        https://api.rubyonrails.org/files/activestorage/README_md.html
        # rspec 
        https://medium.com/craft-academy/rails-attachments-with-active-storage-e8c9e726ab0d
        
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
        
