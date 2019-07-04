1. How to create google cloud storage?
    
     https://medium.com/@pjbelo/setting-up-rails-5-2-active-storage-using-google-cloud-storage-and-heroku-23df91e830f8
     
2. How to allow CORS in the storage?
  
        # go to the google cloud console
        # you can remove spaces from the json file here https://codebeautify.org/remove-extra-spaces
        1. touch cors-json-file.json
        2. echo '[ { "origin": ["http://localhost:3000/", "https://localhost:3000/"], "responseHeader": ["*"], "method": ["GET", "POST", "PUT"], "maxAgeSeconds": 3600 } ]' > cors-json-file.json # don't forget to use single quotes
        3. gsutil cors set cors-json-file.json gs://bucket-name
        ```json
        [
            {
              "origin": ["*"],
              "responseHeader": ["*"],
              "method": ["GET", "POST", "PUT", "OPTIONS", "HEAD", "DELETE"],
              "maxAgeSeconds": 3600
            }
        ]
        ```
