1. How to change image or class in one string?
      
               .course-item class="#{index.even? ? 'dark' : 'light'}"
               div class=(is_active? ? 'active' : 'inactive')
               style="background-image: url(#{image_url(index.even? ? 'course-bg_d.png' : 'course-bg_w.png')})"
2. How to set id or class from rails model?
      
            div class="sample #{@variable.name}"
3. How you can translate erb to slime inside rails app?
            
            gem install erb_to_slim
            # And inside your project folder, use:
            erb_to_slim
