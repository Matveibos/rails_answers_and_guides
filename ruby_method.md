1. 9.to_s(2)

         #=> "1001"
2. "1001".to_i(2)
          
         #=> 9
3. slice
         
         arr = [0,1,2,3,4,5]
         puts arr.slice(3, 2).join(',')   #=> 3,4
         puts arr.slice(0,1).join(',')   #=> 0
         arr.slice(1,0).join(',')   #=> []
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
