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

## Console

1. How you can run rails console on digital ocean?
          
          # I need to start the Rails console in the 'current' folder with:
          RAILS_ENV=production bundle exec rails c
2. How you can run rake db:seed?
          
          RAILS_ENV=production bundle exec rails db:seed
          
## LOGER
          
1. How you can see development log?
          
          remove gem 'rails_12factor'
          go to curent/log
          # and write
          tail -80 production.log 

## CAPISTRANO

1. How you can create db:seed?
        
        # put in in config/deploy.rb
        
          namespace :deploy do
            after :restart, :clear_cache do
              on roles(:web), in: :groups, limit: 3, wait: 10 do
                # Here we can do anything such as:
                # within release_path do
                #   execute :rake, 'cache:clear'
                # end
              end
            end

            task :seed do
              on primary fetch(:migration_role) do
                within release_path do
                  with rails_env: fetch(:rails_env)  do
                    execute :rake, 'db:seed'
                  end
                end
              end
            end
          end
          
          # then 
          bundle exec cap production deploy:seed

