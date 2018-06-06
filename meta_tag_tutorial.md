1. How to set up meta-tag gem?
        
        
        gem 'meta-tags'
    
        In layout:

        <head>
          <%= display_meta_tags %>
          ...
        </head>
        
        In controller:

        def show
          set_meta_tags title: "your title",
                        keywords: "your keywords",
                        description: "your description"
        end
