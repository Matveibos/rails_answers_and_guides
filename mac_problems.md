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
8. How to unistall homebrew lib?
        
        brew uninstall opencv3
        brew cleanup
9. How you can show and install specific version of program?
        
        brew search postgresql@
        brew install postgresql@9.5
        
10. How to install opencv on mac?
        
        brew install opencv@2
        gem install ruby-opencv -- --with-opencv-dir=/path/to/opencvdir
        # for example
        gem install ruby-opencv -- --with-opencv-dir=/usr/local/Cellar/opencv@2/2.4.13.4
11. terminal open new tab in same directory
        
        https://apple.stackexchange.com/questions/178017/new-terminal-to-same-directory
12. How to fix xcodebuild? After installing Xcodeselect
        
        This fixed it for me:

        Install Xcode
        Run sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
13. How to fixed qmake command?
    
        # after installing qt with homebrew it's participate in the Cellear folder, we need to create link to the binary foolder with ln -s command
        
        ln -s /usr/local/Cellar/qt@5.5/5.5.1_1/bin/qmake /usr/local/bin/qmake
14. How to install capybara webkit on mac?
        
        https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit
15. How to get access to my localhost from other devices?
        
        # check nodejs existing
          node -v
          npm -v
        # install localtunnel
          npm install -g localtunnel
        # run your localtunel where YYYY - it’s your local port ( 3000 for example )
          lt --port YYYY
          
          https://creative-coding.decontextualize.com/mobile/
          https://github.com/localtunnel/localtunnel
