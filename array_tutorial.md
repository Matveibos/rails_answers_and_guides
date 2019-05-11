1. Inject

```ruby
     val = [1,3,5,7].inject(0) do |total, num|
       total + num
     end   
     puts val   #=> 16
```

1. Reduce

```ruby
     [1,3,5,7].reduce(:+) #=> 16
     [1,3,5,7].reduce(0, :+) #=> 16, 0 - is the first value for calculation, without it will be first element of array
     [1,3,5,7].reduce { |sum, num| sum + num }
```
