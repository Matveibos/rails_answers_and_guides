1. How you can create render with params?
      
      You just need send params from create and use them in controller
2. How to create redirect from www to non www version?

        before_action :redirect_from_www_to_non_www_host
        
        def redirect_from_www_to_non_www_host
          domain_parts = request.host.split('.')
          if domain_parts.first == 'www'
            redirect_to domain_parts[1..-1].join('.') + request.fullpath, status: 301
          end
        end
