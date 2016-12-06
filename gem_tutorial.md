1. require 'rest-client'
    
        RestClient.get(url) # get page from url
2. 'open-uri'

        url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
        puts open(url).readline
        #=> THE TRAGEDY OF HAMLET, PRINCE OF DENMARK
3. 
