1. How you can create custom validation?

          class Invoice < ApplicationRecord
            validate :active_customer, on: :create

            def active_customer
              errors.add(:customer_id, "is not active") unless customer.active?
              # or for tranlation use 
              # errors.add(:customer_id, I18n.t('activerecord.errors.models.message.should_contain_body_or_attachment'))
            end
          end
2. How you can invoke validation by certain condition?
          
            validates :name, presence: true, if: :validation_need?

            def validation_need?
              false
            end
