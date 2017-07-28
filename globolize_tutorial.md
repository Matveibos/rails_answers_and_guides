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
        # config/initializers/globolize_extension.rb
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
 
 3. How you can accept permitted params for globolize ancesstors?
            
            params.require(:product).permit(*Product.globalize_attribute_names)
        
 4. How you can unclude active-admin globolize?
            
            # include gem https://github.com/fabn/activeadmin-globalize
                gem 'globalize', git: 'https://github.com/globalize/globalize'
                gem 'activemodel-serializers-xml'
                gem 'activeadmin-globalize', '~> 1.0.0.pre', github: 'fabn/activeadmin-globalize', branch: 'develop'
            # inside model
                translates :name
                active_admin_translates :name
            # inside active admin
                # permit_params :name # this is my old value
                permit_params translations_attributes: [:id, :locale, :name, :_destroy]
                  form do |f|
                    f.inputs name: I18n.t('translated_fields')  do
                      f.translated_inputs 'ignored title', switch_locale: false do |t|
                        t.input :name, label: I18n.t('translated_field.name')
                      end
                    end
                    f.actions
                  end
            # generati migration Add To existion columns
            
            class AddTranslationToService < ActiveRecord::Migration[5.0]
              def self.up
                Service.create_translation_table!({
                  :name => :string
                }, {
                  :migrate_data => true,
                  :remove_source_columns => true
                })
              end

              def self.down
                Service.drop_translation_table! :migrate_data => true
              end
            end
                
   5. How to enable fallback for empty translation?
        
            # add to config/application.rb
             config.i18n.fallbacks = true
6. How you can see translation for certain language?

            model_object.translation_for(:en)
            model_object.translation_for(:ru)            
