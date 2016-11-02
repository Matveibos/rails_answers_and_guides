1.  How I can start redis ruby app?
  
        # before then run this code, run redis (src/redis-server)
        require "redis"

        redis = Redis.new
        redis.set('key','value')
        puts redis.get('key')
2. redis.incr
  
        redis.set('a', 10)
        redis.incr('a')
        => 11
3. redis.del
        
        redis.set('a', 10)
        redis.del
        => ''
4. redis.rpush, redis.lpop
    
        redis.rpush('hello', 'vlad')
        redis.rpush('hello', 'nikita')
        
        redis.lpop 'hello'
        => vlad
5. redis.lrange('hello', 0, -1)
    
        LRANGE gives a subset of the list.
        LRANGE friends 0 -1 => 1) "Sam", 2) "Alice", 3) "Bob"
6. redis llen
    
        redisl.llen('hello')
        => return rength of list
7. redis.sadd, redis.srem

        #add value to set
        redis.sadd('set1', 'vlad')
        # remove value from set
        redis.srem('set1','vlad')
8. redis.smembers

        # show all value from set 
        redis.smembers('set1')
        => 'vlad', 'crot' etc...
9. redis.hset, redis.hmset, redis.hgetall, redis.hdel

        # it's just a hash
        redis.hset('1', 'user', 'vlad')
        # hash with multy value
        redis.hmset('2','age',2, 'namew', 3)
        # del value from hash 
        redis.hdel('2', 'age')
        
        #get value from the hash
        redis.hgetall('2')
10. redis.sdiff
        
        # show different between set
        redis.sdiff('222','221')
11. redis.keys('*')
        
        # show all existing keys
        redis.keys('*')
12. redis.flushall

        # clear all database

13. redis.del

        # del 'sunset3' set with all members
        redis.del('sunset3')

        
        
