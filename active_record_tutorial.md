1. How you can check data?
            
            user = User.new(name: "Michael Hartl", email: "mhartl@example.com")
            user.valid?
2. How you can allow access to 'user' attributes?
            
            user.name
            user.email
3. How you can find object by id?
            
            User.find(1)
4. How you can find object by attribute?
            
            User.find_by(name: 'vlad')
5. How you can select all user? last user? first user?
            
            User.all
            User.last
            User.first
6. Hou you can update attributes? 
            
            # 1 way
            user.email = "foo@bar.com"
            # 2 way 
            user.update_attribute(:name, "El Duderino")
            # for multiply
            user.update_attributes(name: "The Dude", email: "dude@abides.org")
7. How you can reload object? 

            user.reload
8. How you can see errors messages?
            
            user.errors.full_messages
            
            
            