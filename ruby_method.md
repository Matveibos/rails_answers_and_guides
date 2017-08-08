1. 9.to_s(2)

         #=> "1001"
2. "1001".to_i(2)
          
         #=> 9
3. slice
         
         arr = [0,1,2,3,4,5]
         puts arr.slice(3, 2).join(',')   #=> 3,4
         puts arr.slice(0,1).join(',')   #=> 0
         arr.slice(1,0).join(',')   #=> []
-------------------------------------------hash-------------------------------------

4. add to hash 
         
         hsh["pig"] = "Wilbur"
5. iterate in hash

         hsh.each_pair{ |k,v| puts "#{k}: #{v}"}
         
         -------------------------------------------------------------------
         
         {"CA"=>"California"}.each do |pair|
            puts pair[0]
            puts pair[1]
         end      

         #=> CA
         #=> California
         
5. inject
         
         val = [1,3,5,7].inject(0) do |total, num|
         total += num
         end   
         puts val   #=> 16
-------------------------------------------file-------------------------------------

6. File.open 'w' (write)
         
         somefile = File.open("sample.txt", "w")
         somefile.puts "Hello file!"
         somefile.close 
7. File.open 'w' 2

         File.open("sample.txt", "w"){ |somefile| somefile.puts "Hello file!"}
8. File.open 'r' (read)

         file = File.open("sample.txt", "r")
         contents = file.read
         puts contents   #=> Lorem ipsum etc.

         contents = file.read
         puts contents   #=> ""
8. * File.open 'a' (append)
         
         # add text without rewriting file
         File.open("sample.txt", "a"){ |somefile| somefile.puts "Hello file!"}
9. File: readlines
          
          File.open("sample.txt").readlines.each do |line|
            puts line
         end
10. file.eof? (end of file)
          
         file = File.open("sample.txt", 'r')
         while !file.eof?
            line = file.readline
            puts line
         end
11. String: strip 
         
         # returns a copy of str with leading and trailing whitespaces removed
         "    hello    ".strip   #=> "hello"
         "\tgoodbye\r\n".strip   #=> "goodbye"
12. File.exists?

         if File.exists?(filename)
            puts "#{filename} exists"
         end
13. Dir.glob
         
         # count the files in my Downloads directory:
         puts Dir.glob('Downloads/*').length   #=> 382

         # count all files in my Downloads directory and in sub-directories
         puts Dir.glob('Downloads/**/*').length   #=> 308858

         # list just PDF files, either with .pdf or .PDF extensions:
         puts Dir.glob('Downloads/*.{pdf,PDF}')
14. File.size
         
         File.open('1.txt','r').size # => 12342 kb
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
19. Ruby function to check file existence
         
         # file? will only return true for files
         File.file?(filename)
         
         # Will also return true for directories - watch out!
         File.exist?(filename)
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
         
# `RAILS METHOD`

26. How to check if object property exists?
         
         # return true if object doesn't equal (nil, "", '', [], {}, false)
           object.present?
         # oposite is method
           object.blank?
