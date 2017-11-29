1. How you can allow rest client post and put method?
      
            Change 
              protect_from_forgery with: :exception
            to
              protect_from_forgery with: :null_session
2. How you can send get/delete/put/post request?
            
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
            RestClient.post 'http://localhost:3000/parking_places', json_my
            
3. How you can check responce status?
            
            response =  RestClient.put "http://localhost:3000/parking_places/ ...
            response.code 
            

4. How to send get request with params?
            
            RestClient.get 'http://example.com/resource', {params: {id: 50, 'foo' => 'bar'}}
            
5. How to send request with API key inside response header?
            
            RestClient.post(url, request, :content_type => :json, :accept => :json, :'x-auth-key' => "mykey")
            # second way
            RestClient.get("http://api.lvh.me:3000/v1/users", authorization: 'Token token=lIQAaDgj8Sl5GREFYDtgEwtt').body
