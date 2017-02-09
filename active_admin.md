1. How you can create status_tag?
      
      column(:status) {|estimate| status_tag(estimate.status)}
