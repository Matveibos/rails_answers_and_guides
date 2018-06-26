1. Tutorial rabbit MQ

        https://github.com/rabbitmq/rabbitmq-tutorials/tree/master/ruby
        http://blog.mechanicles.com/2016/09/19/microservices-using-rails-http-and-rabbitmq.html
1. How you can start rabbitMQ on mac?
        
        /usr/local/sbin/rabbitmq-server
        # if you add this string ----> ' export PATH=/usr/local/sbin:$PATH '
        # just type
        rabbitmq-server
1. How you can install rabbitMQ on mac?
    
        brew install rabbitmq
        # and start
        rabbitmq-server
2. How you can install rabbit plagin for web( RabbitMQ Web-Stomp Plugin )?
        
        # write it in command line
        rabbitmq-plugins enable rabbitmq_web_stomp
        # run rabbit MQ on background
        # check if it works
        http://127.0.0.1:15674/stomp
 
3. Where you have to include rabbit service?
        
        # in config/application.rb:
        config.autoload_paths << Rails.root.join('lib')
        under lib directory ( lib/match_score_service.rb )
