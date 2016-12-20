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
9. How you can watch list of all existing database?
            
            \list or \l
10. How you can setup all pg database for rails app?  
            
            tp> sudo -u postgres createuser rubyuser -s
            tp> sudo -u postgres psql
            
            postgres=# CREATE DATABASE library_development OWNER rubyuser; 
            
            # Configuring database.yml
            
            default: &default
               adapter: postgresql
               encoding: unicode

            development:
               adapter: postgresql
               encoding: unicode
               database: library_development
               username: rubyuser
               password: <Password for rubyuser>

            test:
               adapter: postgresql
               encoding: unicode
               database: library_test
               username: rubyuser
               password: <Password for rubyuser>

            production:
               adapter: postgresql
               encoding: unicode
               database: library_production
               username: rubyuser
               password: <Password for rubyuser>
            
            

2. How you can change user pg password?
      
            # run psql and write:
            postgres=# alter role pushkin password '1'
            # or 
            postgres=# \password pushkin
            
3. How you can fix problem: psql: FATAL: Peer authentication failed for user “rubyuser”?
            
            1. Open /etc/postgresql/9.5/main/pg_hba.conf with root access
              sudo nano /etc/postgresql/9.5/main/pg_hba.conf
            2. Change peer to md5 in these lines.

            Before changing
                  # "local" is for Unix domain socket connections only
                  local   all             all                                     peer
                  # IPv4 local connections:
                  host    all             all             127.0.0.1/32            peer
                  # IPv6 local connections:
                  host    all             all             ::1/128                 peer
            After your change
                  # "local" is for Unix domain socket connections only
                  local   all             all                                     md5
                  # IPv4 local connections:
                  host    all             all             127.0.0.1/32            md5
                  # IPv6 local connections:
                  host    all             all             ::1/128                 md5
           3. Save the file with pressing Ctrl-O. Exit nano with Ctrl-X
           4. Restart postgresql using
                  sudo service postgresql restart
            
        
