1. 9.to_s(2)

         #=> "1001"
2. "1001".to_i(2)
          
         #=> 9
3. slice
         
         arr = [0,1,2,3,4,5]
         puts arr.slice(3, 2).join(',')   #=> 3,4
         puts arr.slice(0,1).join(',')   #=> 0
         arr.slice(1,0).join(',')   #=> []

15. rindex
         
         # returns index of first object for which block is true, starting from the last object.
         a = [ "a", "b", "b", "b", "c" ]
         a.rindex("b")             #=> 3
         a.rindex("z")             #=> nil
16. `ls`
         
         with back quote `ls`
         => "examples.desktop\ngraph.svf\nRuby\nВидео\nДокументы\nЗагрузки\nИзображения\nМузыка\nОбщедоступные\nРабочий стол\nШаблоны\n" 
         
17. check if string is valid Datetime value
         
         require 'date'
         d, m, y = date_string.split '-'
         Date.valid_date? y.to_i, m.to_i, d.to_i
18. str to date 
         
         require 'time'
         t = Time.parse('12.12.2004')

20. each_slice
          
         (1..10).each_slice(3) { |a| p a }
         # outputs below
         [1, 2, 3]
         [4, 5, 6]
         [7, 8, 9]
         [10]
         
21. How you can use Time.now without timezone 
         
         Time.now.strftime('%a, %d %b %Y %H:%M:%S')
         
22. Find element not in common for two arrays
         
         a = [1,2,3,4]
         b = [1,2,4]
         (a-b) | (b-a)
         => [3]
23. Delete all right and left space for string
         
         "  frfgr  ".strip!
         "    ferfr".lstrip!
         "defef    ".rstrip!
         
24. Example of check work time
  
         limit = 3000000

         tstart_1 = Time.now()
         (0..limit).each do |i; a,b, max|
           a = rand(9999999)
           b = rand(9999999)
           max = [a,b].max
         end
         puts "Array method: #{Time.now() - tstart_1} seconds"

         tstart_2 = Time.now()
         (0..limit).each do |i; a,b, max|
           a = rand(9999999)
           b = rand(9999999)
           max = (a > b) ? a : b
         end

         puts "Ternary method: #{Time.now() - tstart_2} seconds"
     
23. How you can convert char to ASCI symbol?
         
         'a'.ord
24. How you can specify range with latter?
         
         ('a'..'b')
25. What's the opposite of ord in Ruby?
         
         >> 65.chr
         A
26. How you can use switch without params?
         
         case
         when b < 3
           puts "Little than 3"
         when b == 3
           puts "Equal to 3"
         when (1..10) === b
           puts "Something in closed range of [1..10]"
         end
27. Iterate by array by 2 values `each_cons`
```ruby
  [1,2,3,4].each_cons(2) { |a, b| p "#{a} #{b}" }]
  # 1 2
  # 2 3
  # 3 4
```

28. Group value into seprated arrays while condition is true  `chunk_while`
```ruby
  a = [1, 2, 4, 9, 10, 11, 12, 15, 16, 19, 20, 21]
  a.chunk_while { |a, b| b - a == 1 }.to_a
  # [[1, 2], [4], [9, 10, 11, 12], [15, 16], [19, 20, 21]]
```

29. How to implement custom sort?
```ruby
  def sort_by_weight
    list_number.sort { |first, second| sort_condition(first, second) }.join(' ')
  end
  
  private
  
  def number_weight(num)
    num.split('').map(&:to_i).reduce(&:+)
  end
  
  def sort_condition(first, second)
    return  1 if number_weight(first) > number_weight(second)
    return -1 if number_weight(first) < number_weight(second)
    first <=> second
  end
```

30. How to convert any object to Array?

```ruby 
  Array('a') => ['a']
  Array(nil) => []
  Array([1,2]) => [1,2]
```

31. How to check object inside the `switch` operation?

```ruby 
# use ->(arg) {} for it

a = 'aaa'
case a
when 'aa'
 p 1
when ->(value) { value.length == 3}
 p 2
end

# 2

```

# `RAILS METHOD`

26. How to check if object property exists?
         
         # return true if object doesn't equal (nil, "", '', [], {}, false)
           object.present?
         # oposite is method
           object.blank?
27. How you can make time formating?

         webinar.start_date.strftime("%d.%m.%y %H:%M")


28. How to make regexp for yotube video?
         
           def youtube_embed(youtube_url)
             if youtube_url[/youtu\.be\/([^\?]*)/]
               youtube_id = $1
             else
               youtube_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
               youtube_id = $5
             end

             return "http://www.youtube.com/embed/#{ youtube_id }"
           end
29. How to remove all unnessesary spaces?
         
         "aaad fef ffr   ".squish
30. How to check real boolean values?

         ActiveModel::Type::Boolean.new.cast 'false' 
         # => false
