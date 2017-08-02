1. Good article about internalization   
        
        http://guides.rubyonrails.org/i18n.html
2. Select language by domain.name
        
         # inside ApplicationController
          def set_locale
            I18n.locale = extract_locale_from_tld || I18n.default_locale
          end

          # Get locale from top-level domain or return nil if such locale is not available
          # You have to put something like:
          #   127.0.0.1 application.com
          #   127.0.0.1 application.ru
          #   127.0.0.1 application.en
          # in your /etc/hosts file to try this out locally
          def extract_locale_from_tld
            parsed_locale = request.host.split('.').last
            I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
          end
3. How to set all available locale?
        
        # in config/application
        I18n.available_locales = [:fr, :de, :es, :en, :ru]
  
4. How to show list of all available locales?
        
        I18n.available_locales

5. How you can add error's translation for custom validation?
        
        # lang.yml
        [lang]:
          activerecord:
            errors:
              models:
                model_name: # or namespace/model_name
                  attributes:
                    email:
                      bad_email: "model-specific message for invalid email"
        # model
        add_error(:email, :bad_email)
