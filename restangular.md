1. How to delete object with rest angular?
  
       # add  RestangularProvider.setDefaultHeaders({'Content-Type': 'application/json'}) to your app config
        app.config ['RestangularProvider', (RestangularProvider) ->
          RestangularProvider.setBaseUrl '/api/v1/'
          RestangularProvider.setDefaultHeaders({'Content-Type': 'application/json'})
        ]  
      # next step is (added restangular delete function)
          Restangular.one("likes", 6).remove().then () -> 
            console.log('delete')
      # added delete to api 
            delete '/:id' do
              Like.delete(params[:id])
            end

2. How you can get object as response from api?
      
       # Restangular.all("url").customGET(""); 
