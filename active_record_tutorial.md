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
9. How you can check if user has error?
            
            @user.errors.any?
10. How you can delete object?
            
            User.find(params[:id]).destroy
11. How you can delete table from database?
            
            $rails console
            # Then just type:
            ActiveRecord::Migration.drop_table(:users)
            
            # Where :users is the table name
12. How you can add column to existing table?
            
            #Use this command at rails console
            rails generate migration add_fieldname_to_tablename fieldname:string
            # and
            rake db:migrate 
13. How you can add index to existing column?
            
            rails generate migration AddIndexToTable
            # and change
            class AddIndexToTable < ActiveRecord::Migration
              def change
                add_index :table, :column_name
              end
            end
14. How to get access to the references params?
            
            # user belongs_to role, role has_many :users
            user.role.any_params
15. How to add default value to column throught a migration?
            
            # rails g migration add_default_value
              def change
                change_column_default :table, :column, value
              end
14. How to remove index from column?
            
            remove_index :table, :column
15. How to remove column from table?

            remove_column :table_name, :column_name
