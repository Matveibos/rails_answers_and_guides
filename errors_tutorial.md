1. How to add an error to active_record model object?
    
          book.errors.add(:name, :blank, message: "cannot be nil")
          expect(book.errors.blank?).to be_falsy
          expect(book.errors.full_messages).to eq(["Name cannot be nil"])
