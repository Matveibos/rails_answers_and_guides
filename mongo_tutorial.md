1. How to install mongo on macos?
      
            brew update
            brew install mongodb

2. How to start mongo?
            
            mongod --dbpath /usr/local/var/mongodb
            mongo --host 127.0.0.1:27017
3. How to import json file to mongo?
            
            # run mongo
            mongoimport --db your_db --collection your_db_table --file <path to restaurants.json>

4. How to use neccessary db?
            
            mongo
            use your_db
            db.your_db_table.count()

            
