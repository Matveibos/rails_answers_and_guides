1. How to open subl on mac?

    http://stackoverflow.com/questions/16199581/opening-sublime-text-on-command-line-as-subl-on-mac-os

2. How to install ruby with rails on mac?
    
    https://gorails.com/setup/osx/10.11-el-capitan

3. Show all rbenv version installed on mac
    
        rbenv versions
5. Rmagick install on mac
        
        http://stackoverflow.com/questions/6688557/cant-install-rmagick-2-13-1-cant-find-magick-config
4. SHow curren ruby version 
    
        ruby -v
5. What you have to do before install new ruby version?
    
        gem install bundler
6. How you can stop rails server?
        
        
        # In your terminal to find out the PID of the process:
        lsof -wni tcp:3000
        #=> COMMAND   PID  USER   FD   TYPE             DEVICE
        #=> ruby    40474 macos   67u  IPv4 0xf7c41974f0a6a9e7
        # kill -9 40474

7. Hide folder
        
        chflags hidden name_of_folder
        chflags nohidden name_of_folder
