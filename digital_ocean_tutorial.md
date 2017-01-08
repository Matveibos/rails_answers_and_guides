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
