1. How to change image or class in one string?
      
               .course-item class="#{index.even? ? 'dark' : 'light'}"
               style="background-image: url(#{image_url(index.even? ? 'course-bg_d.png' : 'course-bg_w.png')})"
2. How to set id or class from rails model?
      
            div class="sample #{@variable.name}"
