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

2. How you can set refereneces for yourself? ( nested set )
      
      
            class FamilyTreeSerializer < ActiveModel::Serializer
              attributes :id, :children
              def children
                ActiveModel::Serializer::CollectionSerializer.new(object.children,
                                                                  serializer: FamilyTreeSerializer)
              end
            end 
3. Make root node in ActiveModel serializer?
            
            # create file serializer.rb
            # config/initializers/serializer.rb
            ActiveModelSerializers.config.adapter = :json
            ActiveModelSerializers.config.json_include_toplevel_object = true
