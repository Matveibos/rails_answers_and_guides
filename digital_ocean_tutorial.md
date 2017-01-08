1. How you can come in in your console?
          
          ssh root@78.155.219.158 # your api adress
2. How you can come back to local terminal?
          
          exit
3. How you can get ssh key and login without password?
          
          ssh-keygen
          cat ~/.ssh/id_rsa.pub
          # that's all
          ssh-copy-id root@78.155.219.158
          
          
## USER
4. How you can add new user?
          
          sudo adduser deploy
5. How you can give user sudo access?
          
          adduser deploy sudo
6. How you can change user?
          
          su deploy
          
## Nginx

1. How you can start and restart nginx server?
          
          sudo service nginx start
          sudo service nginx restart
          sudo service nginx stop
2. How you can watch nginx log?

          sudo tail /var/log/nginx/error.log

