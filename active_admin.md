1. How you can create status_tag?
      
      column(:status) {|estimate| status_tag(estimate.status)}
2. How you can create setting on main ActiveAdmin page?

        https://github.com/artofhuman/activeadmin_settings_cached
        don't forget create own initializer and add settings there
3. How to add another language to active admin?
            
        # go to app/config/locales/ru.yml and add
        ru:
              activerecord:
                models:
                  monument: 
                    few: "Памятников"
                    many: "Памятников"
                    one: "Памятник"
                    other: "Памятники" 

                attributes:
                  cemetary: 
                    name: "Название"
                    country: "Страна"
                    city: "Город"
                    place_id: "Место"
                    status: "Статус"
                    created_at: "Дата создания записи"
                    updated_at: "Дата обновления записи"


              time:
                formats:
                  long: "%Y-%m-%d %H:%M:%S"  
              date:
                formats:
                  long: "%Y-%m-%d"
1. How you can delete nested params in active admin?
            
            # first allow destroy
             accepts_nested_attributes_for :category_assignments, allow_destroy: true
             
            # add permited params with destroy
            permit_params category_assignments_attributes: [:id, :category_id, :_destroy]
            
            # add checkbox with destroy method
            item.input :_destroy, :as => :boolean, :label => "Destroy?"
2. How you can add ordinary adding with several clacc in active admin?
            
               has_many :category_assignments do |item|
                 item.input :category
                 item.input :_destroy, as: :boolean, label: "Удалить?"
               end
3. How you can add internalzation for ActiveAdmin?
            
            # inside aplication rb add 
            module Sakurami
              class Application < Rails::Application
                config.i18n.default_locale = :ru
              end
            end
           # config locales add ru.yml, active_admin.ru.yml and devise.ru.yml
4. ActiveAdmin haw you can manage data access?
           
           https://activeadmin.info/13-authorization-adapter.html
5. How to hide field only for creating new record?
            
              form do |f|
                f.inputs "Member Details" do
                    f.input :email
                    if !f.object.new_record?
                        f.input :password
                        f.input :password_confirmation
                    end
                    f.input :role
                end
                f.actions
               end
6. ckeditor with activeadmin?
      
            https://github.com/activeadmin/activeadmin/wiki/ckeditor-integration
7. How to hide records for some admin?
            
            ActiveAdmin.register Shop do
                controller do
                    def scoped_collection
                       Shop.where(admin_user_id: current_admin_user.id)
                    end
                end
            end
8. How to translate string with html tag to real html?
            
              index do
                column :title
                column :body do |post|
                  post.body.html_safe
                end
                actions
              end
9. How to check localization for current admin user?
      
      
            before_filter :set_user_location, :if => proc { current_user }
10. How to set country-select gem for active admin?
            
            First you need to add the gem in GemFile

                  gem 'country-select'
            Create a helper file '/app/helpers/active_admin/views_helper.rb'. Add the below code

                  module ActiveAdmin::ViewsHelper

                    def country_dropdown 
                      ActionView::Helpers::FormOptionsHelper::COUNTRIES
                    end 
                  end 
                  
            In your view file use

                  form do |f|
                    f.inputs do 
                      f.input :country, as: :select, collection: country_dropdown
                    end

                    f.actions
                  end
11. How to add translation to active admin?
        
        # inside application controller 
            before_filter :set_locale

            def set_locale
              I18n.locale = params[:locale] || I18n.default_locale
            end

            def default_url_options(options={})
              { :locale => I18n.locale }
            end
         # inside active_admin.rb
             config.namespace :admin do |admin|
                admin.build_menu :utility_navigation do |menu|
                  menu.add label: "Languages" do |lang|
                    lang.add label: "English", url: proc { url_for(locale: 'en') }, id: 'i18n-en', priority: 1
                    lang.add label: "Russian", url: proc { url_for(locale: 'ru') }, id: 'i18n-ru', priority: 2
                  end
                  menu.add label: proc { display_name current_active_admin_user },
                    url: '#',
                    id: 'current_user',
                    if: proc { current_active_admin_user? }
                  admin.add_logout_button_to_menu menu
                end
              end
           
          # inside applicaton.rb
 
             class Application < Rails::Application
                config.i18n.default_locale = :ru
              end
12. How to add translation to menu label?
            
            # config/initializers/active_admin.rb
            # don't forget id
            config.namespace :admin do |admin|
              admin.build_menu do |menu|
                menu.add id: 'vehicles', label: proc{ I18n.t 'active_admin.vehicles' }
              end
            end
13. How to set sorting priority for ActiveAdmin menu?
            
            menu.add id: 'language', label: proc { I18n.t "language" }, priority: 1 
