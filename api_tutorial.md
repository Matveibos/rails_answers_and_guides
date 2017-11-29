1. Articles
    
         https://blog.joshsoftware.com/2014/05/08/implementing-rails-apis-like-a-professional/
         
## SECURITY
2. How to add method for authorization api through token?
        
        # Before action 
        before_action :authenticate
        
        # this block should return true or false
        def authenticate
            authenticate_or_request_with_http_token |token,other_options|
             Apiclient.find_by_client_key(token).present?
            end
        end
        
3. In what place you have to put Api key?
        
         API key in the request header 
4. How you can take API key from request header?
        
        # Before action 
        before_action :authenticate 
        
        def authenticate
          api_key = request.headers['X-Api-Key']
          @user = User.where(api_key: api_key).first if api_key

          unless @user
            head status: :unauthorized
            return false
          end
        end
5. How to set/get Rails app secrets?
        
        # config/secrets.yml
        development:
          secret_key_base: ec....
          my_own_token: aw...
        
        # call it
        Rails.application.secrets.secret_key_base
