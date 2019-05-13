___
1. How you can show only methods availabe in the current class?
```ruby
    User.methods - Object.methods
```
___

2. How to extend object with modules methods dynamically?
```ruby
class A
  def ext
    mod = Module.new do
      def hello
        p 'hello'
      end
    end

    self.extend(mod)
  end

end

a = A.new
a.ext
a.hello
# => hello
b = A.new
b.hello

# => undefined method `hello' f    
```
___
