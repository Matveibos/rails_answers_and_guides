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
