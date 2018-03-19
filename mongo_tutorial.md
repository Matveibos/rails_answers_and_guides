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
5. How to find all record with some data?
            
            db.your_db_table.find({field1: 'value1', field2: 'value2'})
