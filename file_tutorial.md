1. File creating
```ruby
  # create a file and write info into the file 
  File.open('spec/fixtures/temp.json', 'w') { |f| f.write('Hello world!') }
```
2. File reading
```ruby
  # read info from the file
  File.open('spec/fixtures/temp.json').read
  
  # check if file exist
  File.exist? 'spec/fixtures/amendments.json'
```

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
         
19. Ruby function to check file existence
         
         # file? will only return true for files
         File.file?(filename)
         
         # Will also return true for directories - watch out!
         File.exist?(filename)
