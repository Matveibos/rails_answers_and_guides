Articles

    https://itnext.io/sidekiq-overview-and-how-to-deploy-it-to-heroku-b8811fea9347

1. How to run sidekiq sheduler?

        https://github.com/moove-it/sidekiq-scheduler

2. How to include web view to the route?
    
        require 'sidekiq/web'
        require 'sidekiq-scheduler/web'

        Rails.application.routes.draw do
          mount Sidekiq::Web => '/sidekiq'
        end
        
3. How to run sidekiq sheduler on a daily basis?

```rb

    https://tecadmin.net/crontab-in-linux-with-20-examples-of-cron-schedule/

    '0 2 * * *'
```
