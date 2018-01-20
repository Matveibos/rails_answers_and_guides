1. Articles
    
    http://blogs.bath.ac.uk/digital/2017/01/31/adding-a-state-machine-to-a-rails-application/
2. How to add state machine?

        # gem
          gem 'aasm'
        # migration
          def change
            add_column :users, :aasm_state, :string
          end
        # user.rb
        class User < ApplicationRecord
          include AASM

          aasm do
            state :sleeping, :initial => true
            state :running, :cleaning

            event :run do
              transitions :from => :sleeping, :to => :running
            end
          end
        end
3. How to raise another error from the event?
        
            event :jump do
              error do |error|
                if error.class == AASM::InvalidTransition
                  raise ActiveRecord::RecordInvalid
                else
                  raise error
                end
              end
              transitions from: :running, to: :jumping
            end
