        #  1. Нужно при создании новости по дефолту ставить значение магазина
        # 2. Нужно сдвинуть cr editor
         # 3. Нужно дать доступ супер админу ко всем материалам 
    4. Нужно поставить тесты
      # 5. Нужно убрать html теги 
        # 5. Нужно сделать дополнительный перевод



login 
password
        # temp@tut.by
        # g72frKXG
1. subdomain 
        
        https://gist.github.com/indiesquidge/b836647f851179589765
2. http://lvh.me:3000 some like localhost
3. 
        http://manuelvanrijn.nl/blog/2015/05/19/rails-subdomains-for-localhost-development/
        https://rails.devcamp.com/professional-rails-development-course/advanced-user-features/how-to-use-subdomains-rails-application
        
4. Example of using subdomain
        
        Article.locales.keys.include? request.subdomain
5. 
            imageable 
            add polymorphic связь 
            news has_one image
            banner
            static page has_many images
            - if review.reviewable_type == 'Course'
              = link_to I18n.t('read'), course_path(review.reviewable, testimonials: true, anchor: "review-#{review.id}")
            - else
              = link_to I18n.t('read'), school_path(review.reviewable, testimonials: true, anchor: "review-#{review.id}")
            - end
6. 
            admin_reviews = Review.includes(:reviewable, :user).joins(:main_page_reviews)
            random_reviews = Review.includes(:reviewable, :user).where.not(id:                   admin_reviews.pluck(:id)).order('RANDOM()').with_status(:published).limit(4)
            @reviews = admin_reviews.includes(:reviewable) + random_reviews 
7. 
                
            return '' unless lesson.next.present?
                Course.last.user_courses.where.not(current_lesson_status: 'done')
8.  Best in place checkbox 
           
           column :status do |service|
                      # best_in_place service, :status, as: :select, url: [:admin, service], collection: ['true', 'false']
                      best_in_place service, :status, as: :checkbox, url: [:admin, service], collection: {false: raw("&#x2610;"), true: raw("&#x2611;")}
                      best_in_place service, :status, as: :checkbox, url: [:admin, service], collection: {false: 'Подключена', true: 'Отключена'} 

            end
9.  Translation 
        
        t(:'best_in_place.yes', default: 'Yes')
        t(:'best_in_place.no', default: 'No')
            
10. 
        # about check box
        https://github.com/collectiveidea/awesome_nested_set/wiki/Awesome-nested-set-cheat-sheet

11. Calltraking 
        
        http://call-tracking.by/user_cabinet/dashboard?user_id=4
        https://github.com/TwilioDevEd/call-tracking-rails
        twilio 
        passwordpassword
12. Cretate private chat woith twilio api?
        
        https://habrahabr.ru/company/virgilsecurity/blog/302608/
13. Geocoder

        http://www.rubygeocoder.com/
14.  Old fragment

                    - @main_salon.salon_services.each do |salon_service|
                      - if salon_service.service.root?
                        li
                          a.toggle href="#"
                            = salon_service.service&.name
                          ul.inner
                            - @main_salon.salon_services.where(status: true).each do |salon_service_2|
                              - if salon_service_2.service.root == salon_service.service &&  salon_service_2.service.leaf?
                                li
                                  p.left
                                    = salon_service_2.service.self_and_ancestors.pluck(:name)[1..-1].join('-')
                                  p.right
                                    | £
                                    = salon_service_2.price 
                            li
                              p.left Ladies cut
                              p.right £20
                            li
                              p.left Ladies cut
                              p.right £20
                            li
                              p.left Ladies cut
                              p.right £20
                            li
                              p.left Ladies cut
                              p.right £20 
15. Json b field
        
        https://stackoverflow.com/questions/29526787/is-it-possible-to-show-a-form-with-fields-for-the-jsonb-properties
16. Example of brief field

                Brief.data = { introduction: [{ type: 'input', label: 'name'}, {type: 'input', label: 'company name'}, { type: 'input', label: 'email'}] }
17. Example of field with helpers
        
        <%= simple_form_for @submitted_brief do |f| %>
          <%= create_real_field('input', f, 'data') %>
          <%= create_real_field('input', f, 'email') %>
          <%= f.button :submit %>
        <% end %>
