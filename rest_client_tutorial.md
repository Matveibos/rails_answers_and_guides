1. How you can allow rest client post and put method?
      
      Change 
        protect_from_forgery with: :exception
      to
        protect_from_forgery with: :null_session

