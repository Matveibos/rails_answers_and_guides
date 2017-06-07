0. How to use globolize with rails 5?
    
        # add this to your gemfile
       gem 'globalize', github: 'globalize/globalize'
       gem 'activemodel-serializers-xml'
       
1. How you can start working with globolize?
      
        # add to model
        class Post < ActiveRecord::Base
          translates :title, :text
        end
        
        # add to your migration
        class CreatePosts < ActiveRecord::Migration
          def change
            create_table :posts do |t|
              t.timestamps
            end

            reversible do |dir|
              dir.up do
                Post.create_translation_table! :title => :string, :text => :text
              end

              dir.down do
                Post.drop_translation_table!
              end
            end
          end
        end
        
        # check work
        I18n.locale = :en
        post.title # => Globalize rocks!

        I18n.locale = :he
        post.title # => גלובאלייז2 שולט!
2. How you can add name_en, name_ru prefix for your db?
        
        # 0. include gem
            gem 'globalize-accessors'
        
        # 1. first create file globolize_extension.rb and add there this module
            module TranslatesWithAccessors

              extend ActiveSupport::Concern

              module ClassMethods

                def translates(*params)
                  options = params.extract_options!
                  options.reverse_merge!(:globalize_accessors => true)
                  accessors = options.delete(:globalize_accessors)
                  super
                  globalize_accessors if accessors
                end

              end
            end

            # include the extension
            ActiveRecord::Base.send(:include, TranslatesWithAccessors)
            
         # 2. Now you can use name_en, name_ru, name_en = , name_ru =
        
        
