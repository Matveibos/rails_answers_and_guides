1. How to add an error to active_record model object?
    
          book.errors.add(:name, :blank, message: "cannot be nil")
          expect(book.errors.blank?).to be_falsy
          expect(book.errors.full_messages).to eq(["Name cannot be nil"])
2. How to handling errors before the raising in the controller?
    
         class ApplicationController < ActionController::Base
          rescue_from User::NotAuthorized, with: :deny_access # self defined exception
          rescue_from ActiveRecord::RecordInvalid, with: :show_errors

          rescue_from 'MyAppError::Base' do |exception|
            render xml: exception, status: 500
          end

          protected
            def deny_access
              ...
            end

            def show_errors(exception)
              exception.record.new_record? ? ...
            end
        end
3. How to reraise error after catching?

        begin
          this_will_fail!
        rescue Failure => error
          log.error error.message
          raise
        end
4. How to retry service call after an errors?

```ruby
# use retry 
begin
  raise

rescue
  p 'failed'
  sleep 1
  
  retry
end
```

5. How to run part of code in any case?

```ruby
# use ensure

begin
  raise 
ensure
  # will be called in any case
end
```

6. Why do you need to use try/catch?

```ruby
# it's a control flow, it helps you to terminate your loop whenever you want 
catch(:five) do
  10.times do
    10.times do |a|
      throw(:five, a) if a == 5
    end
  end
end

```
