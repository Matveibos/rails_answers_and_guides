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
