1. How you can allow rest client post and put method?
      
            Change 
              protect_from_forgery with: :exception
            to
              protect_from_forgery with: :null_session
2. How you can send get/delete request?
            
            RestClient.get 'http://localhost:3000/parking_places/1.json', {}
            RestClient.delete 'http://localhost:3000/parking_places/1.json'

