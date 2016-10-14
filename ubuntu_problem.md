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
