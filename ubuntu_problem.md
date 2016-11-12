1. Error: 'iknown filesystem. grub rescue'

            ls 
            # find your disk 
            set root=(hd0,6) # here name of your disk from ls
            set prefix=(hd0,6)/boot/grub
            insmod normal 
            normal 
            # after you boot in ubuntu run the following commands
            sudo update-grub
            sudo grub-install /dev/sda
2. How you can install app (redis for example)?
            
            wget http://download.redis.io/releases/redis-3.2.5.tar.gz
            tar xzf redis-3.2.5.tar.gz
            cd redis-3.2.5
            make
3. How you can clean free space?
            
            # show size of cache
            du -sh /var/cache/apt/archives
            # clean cache
            sudo apt-get clean
4. Without block /var/lib/dpkg/
            
            sudo fuser -vki /var/lib/dpkg/lock

5. install chrome 16.04
           
            wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
            sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
            sudo apt-get update 
            sudo apt-get install google-chrome-stable 
6. install sublime 16.04
            
            sudo add-apt-repository ppa:webupd8team/sublime-text-3
            sudo apt-get update
            sudo apt-get install sublime-text-installer
            
7. install simplescreerecorder 16.04

            $ sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder
            $ sudo apt-get update
            $ sudo apt-get install simplescreenrecorder
8. install telegram 16.04
            
            sudo add-apt-repository ppa:atareao/telegram
            sudo apt-get update
            sudo apt-get install telegram
            
            
