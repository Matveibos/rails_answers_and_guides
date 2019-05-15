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
2. Could you tell me 2 ways for accessing element in array?

```ruby
arr = [1,2,3]
arr[0]
arr.fetch(0)

# method fetch will raise exception if such index doesn't exist

```
