1. Firts tutorial about rails service?
      
      https://www.netguru.co/blog/service-objects-in-rails-will-help

2. Service pattern step by step ( 10 step )

      https://medium.com/selleo/essential-rubyonrails-patterns-part-1-service-objects-1af9f9573ca1
      
3. Controller service tutorial
      
      https://www.engineyard.com/blog/keeping-your-rails-controllers-dry-with-services
      https://hackernoon.com/service-objects-in-ruby-on-rails-and-you-79ca8a1c946e

2. How you can add simple services?
      
            # add app/services folder
            # add there my_service.rb file
            # inside this file write ( it's just ordinary ruby class )
             class MyService

             end
            # Invoke services where you want

3. How to create Singleton class in ruby?
            
            require 'singleton'

            class Sample
              include Singleton

              attr_accessor :name

              def self.name
                instance.name
              end
            end

            Sample.instance.name = "Hello"
            puts  Sample.name
