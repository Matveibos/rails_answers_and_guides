1. How to install MySQL on mac?
      
              brew install mysql
2. How run mySQL server?

             mysql.server start
3. Example of database.yml?
            
            development:
              adapter: mysql2
              encoding: utf8
              reconnect: false
              database: onlinedom_development
              pool: 5
              username: root
              password:
              socket: /tmp/mysql.sock
4. How to open mysql console?
            
            mysql -u root
5. How to open mysql console with password?
            
            mysql -u root -p
5. How to show a specific table?
            
            # inside console use 
            mysql>use mysql;
            mysql>show tables;
            mysql> describe user;
            
6. How to update the mysql password?

            # inside console use 
            mysql>use mysql;
            update user set authentication_string=password('123321') where user='root';
            
            
7. How to make a db dump?
            
            # install sequal pro - connect - cmd + shift + e
            # afted downloading
            
            mysql -u root -p adapter_development < ~/Documents/fidor_dumps/adapter_production_2017-12-13.sql
8. How to download db from server to mac local machine?
            
            https://sequelpro.com/download#auto-start
            cmd+shift+e for downloading this db
9. Sequal pro db update without sql
            
            download everything in csv format
            # change to local bd
            # import 
            cmd + shift + i
            # to your selected db
9. How to make dump with the workbench help?
            
            1. Open workbench MySql
            2. Choose your local db
            3. Select 'Data import/Restore'
            4. Select 'import from self contained file' -> choose a sql file
            5. Choose a default target schema 
            
10. How make db:reset for downloaded production db on your local db?
      
            bin/rails db:environment:set RAILS_ENV=development, 
            rake db:drop
11. How to set up an empty password for the MySql root user?
            
            $ mysqld --skip-grant-tables
            $ mysql -u root mysql
            $ update user set authentication_string=password('') where user='root';
            $ mysql.server restart
12. How to set up mysql on heroku?
            
            https://medium.com/@emersonthis/running-rails-with-mysql-on-heroku-4765df033428
