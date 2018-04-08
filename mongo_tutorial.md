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
6. Show databases?
      
       show databases
7. Show models tables(collection)?
      
       use your_db
       show collections
8. How to exclude some values from set of result?
       
       db.airlines.aggregate([{ $match: { destCountry: { $ne: 'United States' }}}])
9. How to show only specific fields?
      
       db.airlines.aggregate([{ $group: { _id: {class: "$class"}, total: { $sum: 1 } }}, { $project: {_id: 0, class: "$_id.class", total: "$total"}}])
       
       # { "class" : "F", "total" : 140343 }
10. Is it possible to do an OR in the $match?

       $match: { $or: [{ author: 'dave' }, { author: 'john' }] }
      
