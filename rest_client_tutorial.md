1. How you can allow rest client post and put method?
      
            Change 
              protect_from_forgery with: :exception
            to
              protect_from_forgery with: :null_session
2. How you can send get/delete/put request?
            
            RestClient.get 'http://localhost:3000/parking_places/1.json', {}
            RestClient.delete 'http://localhost:3000/parking_places/1.json'
            # put 
            json_my = {
              "parking_place": {
                "latitude": "53.9281683571424",
                "longitude": "27.6852862857143",
                "status": "free"
               }
            }
            RestClient.put 'http://localhost:3000/parking_places/3.json', json_my
3. How you can check responce status?
            
            response =  RestClient.put "http://localhost:3000/parking_places/ ...
            response.code 
            

4. How to send get request with params?
            
            RestClient.get 'http://example.com/resource', {params: {id: 50, 'foo' => 'bar'}}
