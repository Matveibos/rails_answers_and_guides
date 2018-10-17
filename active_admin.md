## ActiveAdmin
          
1. How you can start work with ActiveAdmin?
  
		  gem 'devise'
		  gem 'activeadmin', github: 'activeadmin'

		  rails g active_admin:install
		  rails db:migrate
		  rails db:seed

		  http://localhost:3000/admin
		  # Username: admin@example.com
		  # Password: password
2. How you can add your model to admin page?
          
          rails generate active_admin:resource YourModelName
3. How you can show only specific column?
          
          # inside app/admin/book.rb add
            index do
              column :name
              column :author
              column :genre
              column :price
            end
4. How you can show other name (not only column name)?
          
          # rewrite model class with to_s
          
          class Author < ApplicationRecord
            has_many :books

            def to_s
              "#{first_name} #{last_name}"
            end
          end
5. How to add View, Edit and delete methods to the column?
          
          # add actions field
          index do
						column :name
						column :author
						actions
          end
6. How to add helper for money?
          
          # add number_to_currency helper
          index do
              column :price do |product|
                number_to_currency product.price
              end
          end
 7. How you can change column name?
          
          index do
            column "new name", :name
          end
 8. How you can change right side filter?
          
            filter :author
            filter :name
            filter :genre
            filter :price
 9. How you can change list to check box in filter?
          
            filter :author, :as => :checkbox
 10. How to change references model to normal view?
 	    
	   	 # admin/users.rb
		 index do
		      column :role do |p|
			p.role.user_role  unless p.role_id.nil?
		      end
		      actions
		  end
11. How you can customize show action?
		
         https://gist.github.com/juggleross/13021bd41bdc88e346f2c088b364954a
12. How  you can show correct value of refferences model?
		
		# just add for bad customize model(for example Role.md)
		  def to_s
		    user_role
		  end
13. How you can permmit change params for user?
		
		# admin/user.rb
		permit_params :role_id, :email, :id, :role
14. How you can show something differrent in activeAdmin?
		
		  index do
		    column :complaints do |monument|
		      monument.complaints.size
		    end
		  end
15. Create link with filter by click inside ActiveAdmin?
		
		    column "Число жалоб", :complaints do |cemetary|
			      link_to "#{cemetary.complaints.count}", :controller => "complaints", :action => "index",
				'q[complaint_entity_id_eq]' => "#{cemetary.id}".html_safe, 'q[complaint_entity_type_eq]' => 													"Cemetary".html_safe
		    end
## Part 2

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
5. How to hide the field only for creating a new record?
            
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
14. How to add polymorhic accosiation in active admin?
            
            https://github.com/activeadmin/activeadmin/wiki/Nested-forms-with-polymorphic-association-in-Active-Admin-Formtastic
15. How to change status by button click in ActiveAdmin?
            
              action_item :view, only: :show do
                link_to I18n.t('active_admin.course.toggle_status'), toggle_status_admin_course_path(course), method: :put
              end

              member_action :toggle_status, method: :put do
                resource.update(status: resource.status.archive? ? :published : :archive)
                redirect_to admin_course_path(resource), notice: I18n.t('active_admin.course.status_updated', status: resource.status_text)
              end
16. Как сделать перевод для enum в актив админ?
       
            Добавить к полю текст column :current_lesson_status_text
17. How you can add json field to active admin?
        
        # what tipe of data you have to use 
            jsonb
      
        permit_params :name, {:links => [:facebook, :twitter]}

        form do |f|
          f.inputs "Person Details" do
            f.input :name
          end
          f.inputs :name => "Links", :for => :links do |g|
            g.input :facebook, :input_html => { :value => "#{person.links['facebook']}" }
            g.input :twitter, :input_html => { :value => "#{person.links['twitter']}" }
          end
          f.actions
        end
18. How you can create custom translation for f.inputs?
            
            # just use label
             w_time.input :mon_fri, label: I18n.t('labels.mon_fri_label')
19. How to show image in activeadmin?
	  
		  show do
		    attributes_table do
		      row :image do |article|
			image_tag(article&.image&.file&.url(:thumb)) if article&.image&.file&.url(:thumb)
		      end
		    end
		  end
20. How to add tab for activeadmin?
		
		form do |f|
		    tabs do
		      tab I18n.t('users.form.information') do
			f.inputs do
			  f.input :full_name
			  f.input :email
			  f.input :position
			  # f.input :phone_number
			  f.input :company
			end
		      end
		      tab I18n.t('users.form.permisions') do
			f.inputs do
			  User::PERMISIONS.each do |permision|
			    f.input permision, as: :radio,
				    collection: [[I18n.t('users.form.access_level.read'),'read'],
						 [I18n.t('users.form.access_level.edit'),'manage'],
						 [I18n.t('users.form.access_level.none'),'none']
				    ]
			  end
			end
		      end
		    end
		    f.actions
		  end
21. How to turn of password field on edit page if they are empty?
	
		  # user model
		  controller do
		    def update
		      if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
			params[:user].delete("password")
			params[:user].delete("password_confirmation")
		      end
		      super
		    end
		  end
22. How to add has_one model inside active admin?
		
		# see active admin nested resource
		https://github.com/activeadmin/activeadmin/blob/9c46b14ea0d9b3aaaa3d7520555c9959d06ce7f3/docs/5-forms.md#nested-resources
		
23. How to add thumb photo for form if photo exist?
	
		  form do |f|
		    f.inputs do
		      f.input :image,  hint: f.object.image.url.present? ? image_tag(f.object.image.url(:thumb)) : content_tag(:span, 'нет фото')
		    end
		    f.actions
		  end

24. How to show validation error for active admin?
		
		# add f.semantic_errors *f.object.errors.keys
		form do |f|
		  f.semantic_errors *f.object.errors.keys
		  f.inputs
		end

25. How to create helpers for active admin?
	
		1. the filename must end in "_helper.rb"
		2. the module name must be the camel-case of the file name
		3. the file must be in app/helpers/active_admin/ directory.

		# app/helpers/active_admin/foo_helper.rb
		module ActiveAdmin::FooHelper
		  def foo
		    "i pity the foo!!!"
		  end
		end



26. How to add date and time picker?
	
		input :start_date, as: :datetime_picker
27. How to create custon view for active admin?
		
              div class: 'admin-ckeditor-block', style: 'font-size: 40px' do
                resource.description.html_safe
              end
28. How to add default value to ActiveAdmin?

		form do |f|
		  f.object.published_at ||= DateTime.now
		  f.inputs "Post Details" do
		    f.input :title
		    f.input :body
		    f.input :published_at
		    ...
		  end
		end

29. How to unscope values in ActiveAdmin?

		  controller do
		    def scoped_collection
		      MyModel.unscoped
		    end
		  end
30. How to add styles for index tables?
	
		  index do
		    column :title do |full|   
		      div class: "admin-setting" do
			full.title
		      end
		    end
		  end
31. How to create scope tabs?
	 
	    scope :all do |data|
	      data.all
	    end
32. How to create own button likes show or edit?
	
	    action_item :view, only: [:show, :index] do
	      link_to 'View on site', '/admin'
	    end
33. How to add html erb text in ActiveAdmin?
	  
	          index do
		    column :description do |full|
		      raw("hi <h1>#{full.description}</h1>")
		    end
	          end
34. How you can working with date?
	
		# ordinary date
			f.input :my_date, as: :datepicker
		# only time
			f.input :my_date, as: :time_picker	
		# date with time
			f.input :my_date, as: :datetime_picker			
35. How you can select, what you need?

		  form do |f|
		    f.inputs do 
		      f.input :country, as: :select, collection: Country.all.map { |r| [r.name.to_s, r.id] }
		    end

		    f.actions
		  end
36. How you can set another page on action new?
	  
		  controller do
			def new
			  render 'admin/_sample.html.erb', layout: "active_admin"
			end
		  end
37. How you can crete has_one connection?
	      
	      f.inputs name: 'SEO' do 
		f.inputs for: [:seo, f.object.seo || Seo.new] do |seo|
		  f.inputs do
		    seo.input :title, label: I18n.t('labels.seo.title')
		    seo.input :description, label: I18n.t('labels.seo.description')
		    seo.input :tags, label: I18n.t('labels.seo.tags')
		  end
		end
	      end
38. How to remove standart ActiveAdmin authentification?
		
		# config/initializers/active_admin.rb
		  ActiveAdmin.setup do |config|
		    config.authentication_method = nil
		  end
39. How to skip comments/user table generation?
	
		rails g active_admin:install --skip-comments
		rails g active_admin:install --skip-users
