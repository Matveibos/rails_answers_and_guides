1. Can you give me example of json file?
          
          {
             "President": "Alan Isaac",
             "CEO": "David Richardson",

             "India": [
                "Sachin Tendulkar",
                "Virender Sehwag",
                "Gautam Gambhir"
             ],
             "England": [
                "Alastair Cook",
                "Jonathan Trott",
                "Kevin Pietersen"
             ]
          }

2. How you can convert hash to json?  
         
          require 'json'
          hash.to_json
3. How you can convert json to hash?
          
          require 'json'
          JSON.parse(json_file)
