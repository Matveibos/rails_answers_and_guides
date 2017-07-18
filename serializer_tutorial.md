1. How you can create another active model serializer for same model? (grape api)
      
        # app/serializers/another_serializer.rb
        class AnotherSerializer < ActiveModel::Serializer
        end
        
        # inside grape api
        resource :shops do
          get '/', serializer: AnotherSerializer do
            Shop.all
          end
        end
