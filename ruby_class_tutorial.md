___
1. How can you show only methods availabe in the current class?
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

3. What is prepend method?
```ruby

# prepend insert module before the reciever

module A
  def h
    p 'h'
  end
end

class B 
  prepend A

  def h 
  end
end

B.ancestors
# => [A, B, Object ...

```
___

4. How to create module function?

```ruby 
# use module_function

module A
  def hello
    p 'hello!'
  end

  module_function :hello
end

A.hello
```

___

5. How to use module methods without directly calling module?

```ruby
# include module inside your app

module A
  module_function

  def hello
    p 'hello!'
  end
end

include A
hello #=> 'hello!'
```
