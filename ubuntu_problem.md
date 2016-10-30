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
