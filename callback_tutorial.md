1. What new methods you need to use instead of "attribute_changed?" ?
       
       # saved_change_to_attribute?
       after_update :update_markers, if: :saved_change_to_status?

2. What new methods you need to use instead of "attribute_was" ?
       
       attribute_before_last_save
