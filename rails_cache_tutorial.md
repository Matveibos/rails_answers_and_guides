1. How to test rails cache with Rspec?

```ruby
# set config/environment/test.rb
# config.action_controller.perform_caching = false
# config.cache_store = :null_store

RSpec.describe SomeClass
  # memory store is per process and therefore no conflicts in parallel tests
  let(:memory_store) { ActiveSupport::Cache.lookup_store(:memory_store) } 
  let(:cache) { Rails.cache }
  
  before do
    allow(Rails).to receive(:cache).and_return(memory_store)
    Rails.cache.clear
  end
  
  it do
    expect(cache.exist?('some_key')).to be(false)
    
    cache.write('some_key', 'test')
    
    expect(cache.exist?('some_key')).to be(true)
  end
  
  it 'expires in 5 minutes' do
    # run your method
    expect(cache.exist?('some_key')).to be(true)
    
    Timecop.freeze(Time.now + 5.minutes) do
      expect(cache.exist?('some_key')).to be(false)
    end
  end
end
```
