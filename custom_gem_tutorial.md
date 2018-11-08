1. Articles
      
       https://www.engineyard.com/blog/wrapping-your-api-in-a-ruby-gem
       # mountable gem ( do something like a rails app) 
       https://crypt.codemancers.com/posts/2013-05-30-how-to-write-a-gem/
1. How to generate own gem?
      
       bundle gem your_gem_name
       # build a gem version
       gem build your_gem_name.gemspec
       # then install generated gem locally
       gem install ./your_gem_name-0.1.0.gem
2. How can you find path to gems?
      
            gem env
            cd /Users/vladislav_hilko/.rvm/gems/ruby-2.4.2/gems
