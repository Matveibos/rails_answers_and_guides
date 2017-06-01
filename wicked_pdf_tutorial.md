1. How to generata wicked pdf?
      
      Here's what I did to use wicked_pdf:

      # Gemfile
      gem 'wicked_pdf'
      gem 'wkhtmltopdf-binary' # if you need the binary too
      
      # inside controller
         def show
          @temp = Temp.find(params[:id])

          respond_to do |format|
            format.html
            format.pdf do
              render pdf: "file_name_of_your_choice",
                     template: "temps/show.pdf.erb",
                     locals: {:temp => @temp}
            end
          end
        end
      # inside views create show.html.erb and show.pdf.erb
      
      
