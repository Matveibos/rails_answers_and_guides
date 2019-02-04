1. File creating
```ruby
  # create a file and write info into the file 
  File.open('spec/fixtures/temp.json', 'w') { |f| f.write('Hello world!') }
```
2. File reading
```ruby
  # read info from the file
  File.open('spec/fixtures/temp.json').read
```
