1. Articles
      
       https://www.engineyard.com/blog/wrapping-your-api-in-a-ruby-gem
       
       # mountable gem ( do something like a rails app) 
       https://crypt.codemancers.com/posts/2013-05-30-how-to-write-a-gem/
       
       # pushing gem
       https://www.alexedwards.net/blog/how-to-make-a-rubygem-part-three
1. How to generate own gem?
       
       # https://blog.faodailtechnology.com/step-by-step-guide-to-publish-your-first-ruby-gem-bae3291aeab4
      
       bundle gem your_gem_name
       # build a gem version
       gem build your_gem_name.gemspec
       # then install generated gem locally
       gem install ./your_gem_name-0.1.0.gem
2. How can you find path to gems?
            
            gem env
            cd /Users/vladislav_hilko/.rvm/gems/ruby-2.4.2/gems

2.1. RSPEC. How to add rspec tests to your gem?
            
            # add dependency to the gemspec file 
              spec.add_development_dependency "rspec"
            # then install it
              bundle
            # create folder for the tests
            # spec/spec_helper.rb
              require 'rspec'
              require 'custom_gem_sample'
            # create some tests spec/custom_gem_sample_spec.rb
               
                require 'spec_helper'

                describe CustomGemSample do
                  it 'returns correct message' do
                  end
                end        
2.2 SimpleCov. How to add coverage report?
            
            # add dependency to the gemspec file 
              spec.add_development_dependency "simplecov"
            # then install it
              bundle
            # create .simplecov file with:
             SimpleCov.start do
               add_group 'lib', 'lib'
             end
            # include it to the spec_helper.rb file
              require 'rspec'
              require 'simplecov'
              require 'custom_gem_sample'
            
 3.1. How to add external dependency to the your gem?
            
            spec.add_dependency "activesupport", "~> 5.2.1"
            bundle
            # add require it to the gem lib class
            require 'active_support'
4.1. How to push/deploy your gem to rebygem.org?
      
            # signin on rubygems 
            https://rubygems.org/sign_in
            # add your creditionals
            $ curl -u your_name https://rubygems.org/api/v1/api_key.yaml > ~/.gem/credentials; chmod 0600 ~/.gem/credentials
            #  gem push your-gem-name-0.1.0.gem
5.1. How to install gem from the folder? Or Uninstall it?
            
            rake install
            gem uninstall my_gem_name
6.1. How To Write a Command Line Ruby Gem?
            

```ruby
 # add bin/my_gem_name
 # add these info there
 #!/usr/bin/env ruby

require "my_gem_name"

gem = MyGenName::Hello
gem.hi
# or send with arg
gem.hi ARGV[0]
#-------------------------
# change my_gem.gemspec

# spec.bindir        = "bin"
spec.executables   = ["my_gem_name"]
# run rake install
# my_gem_name
#=> 'Hi'
```



