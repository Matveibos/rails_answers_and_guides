1. How to run sh script?
      
            # install zsh
             zsh (personally I use zsh+oh-my-zsh https://github.com/robbyrussell/oh-my-zsh)
            # create hello.sh script and run it
             zsh hello.sh 
3. How to install zsh?
            
            sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
2. How to puts hello world with script?
            
            echo 'Hello world!'
3. How to create new folder/file?
            
            # folder
            mkdir name
            # file
            touch 1.txt
4. How to open sublime/create a git repo/rub ruby script?
            
            subl new_task.rb
            git init
            ruby new_task.rb
5. How you can open new iterm window?
            
            open . -a iterm
6. How you can declare variables?
            
            a=Hello
            b=world

            echo "$a $b"
            #=> Hello world
            
7. How to exit from code flow?

            echo Hello world
            exit
            echo Does not show
8. How to write conditions?
            
            # -ge == greater than
            # if == end
            age=20

            if [ "$age" -ge 18 ]; then
              echo 'You can vote'
            else
              echo 'You are younger'
            fi
9. You have ability to cancatanate several variabels to one

            prefix=ABC.BCA
            second=1222

            echo $prefix/---$second
            => ABC.BCA/---1222
10. How to write function?
            
            function Welcome() {
              echo "java $1"
            }

            Welcome Hello
11. How to check if string size is zero?
            
            # Checks if the given string operand size is zero
            name=''

            if [ -z $name ]; then
              echo "Is zero!"
            fi
