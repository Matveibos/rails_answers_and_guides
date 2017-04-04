## codeschool git lesson 
http://gitreal.codeschool.com/

1. How you can return the latest commit?
  
        git checkout -f 
2. How you can create new branch?
        
        git checkout -b branch_name
3. How you can merge new branch to master?
        
        git checkout master
        git merge branch_name
4. How you can delete branch?
        
        git branch -D branch_name # without merge
        git branch -d branch_name
5. How you can add to gitignore file?
        
        # in terminal
        git rm --cache app/controllers/*.rb
        # inside git.ignore
        /app/controllers/*.rb
6. How you can fix git config?
        
        git pull origin master
        git status
7. How to go back to the previous commit?
        
        git reset --hard
        git clean -df
8. How to pull all from master directly?
      
       git pull --rebase origin master
9. How you can add information to old last commit?
      
       git add .
       git commit --amend
