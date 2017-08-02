1. How you can create custom validation?

          class Invoice < ApplicationRecord
            validate :active_customer, on: :create

            def active_customer
              errors.add(:customer_id, "is not active") unless customer.active?
            end
          end
