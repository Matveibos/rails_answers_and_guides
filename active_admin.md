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
