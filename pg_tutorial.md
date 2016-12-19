1. How you can install gem pg?
      
            sudo apt-get install libpq-dev
            gem install
2. How you can install pg?
            
            sudo apt-get update
            sudo apt-get install postgresql postgresql-contrib
3. How you can begin work with pg?
      
            sudo -i -u postgres
            psql
4. How you can add new pg user?
            
            # as postgres user:
            # createuser --interactive
            
            Output
                  Enter name of role to add: sammy
                  Shall the new role be a superuser? (y/n) y
5. How you can select user?
      
            sudo adduser sammy
            sudo -i -u sammy
            psql
6. How you can create db for user?
            
            createdb sammy
7. How you can select db?
            
            psql -d postgres
8. How you can watch curent db?
      
            \conninfo


2. How you can change user pg password?
      
            # run psql and write:
            alter role pushkin password '1'
            
        
