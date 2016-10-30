1.  How I can start redis ruby app?
  
        # before then run this code, run redis (src/redis-server)
        require "redis"

        redis = Redis.new
        redis.set('key','value')
        puts redis.get('key')
