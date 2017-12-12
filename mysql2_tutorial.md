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
5. How to show a specific table?
            
            # inside console use 
            mysql>use mysql;
            mysql>show tables;
            mysql> describe user;
            
6. How to update the mysql password?

            # inside console use 
            mysql>use mysql;
            update user set authentication_string=password('123321') where user='root';
            
            
