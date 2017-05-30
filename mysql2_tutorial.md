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
