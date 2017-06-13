1. How to create validation with reg_exp which can accept nil?
        
        validates :field,
          format: { with: /\A([a-z]+|)\z/i }, :allow_blank => true
