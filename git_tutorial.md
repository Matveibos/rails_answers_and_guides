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
        
        # if you already add to something
          git reset --hard
        # or
          git checkout .
8. How to pull all from master directly?
      
       git pull --rebase origin master
9. How you can add information to old last commit?
      
       git add .
       git commit --amend
10. How to remove something from git?
      
        git rm -rf public/uploads
11. How you can download branch from github?
        
        git fetch --all
        git checkout myBranch
        
12. How to include gem directly from github?
        
        # from https://github.com/unfernandito/coupons
        gem 'coupons', github: 'unfernandito/coupons'
        
13. How you can show current remote url?     

        git remote -v
        
14. How you can set new current remote url?
        
         git remote set-url origin https://........git
         
15. How you can change latest commit name?
        
        git commit --amend
        # then set new name 
        git push --force

16. How you can push changes without pulling date?
        
        git push --force
        
17. How you can change old commit name?
        
        git rebase -i --root
        # then change 'pick' to 'reword' and write new commit name

19. How you can combine many commits into one?
        
        git rebase -i --root
        # then change 'pick' to 'squash'
20. How you can make changing in already pushed branch without commit?
        
        git add .
        git commit --amend
        git push -f origin <branch>
21. How to return back changes from any commits?
        
        # to see the hash numbers of commits
           git log 
        # and return every changing back with new message
          git revert e2917f3302afceffe7ebe27b7b2c9a996694f306
22. How you can hide already added files with git?
        
        touch 10.txt
        git add .
        
        # it will hide changing
          git stash
        # it will show changing again
          git stash pop
        
23. How to updated the forked repo from master?
       
         https://help.github.com/articles/configuring-a-remote-for-a-fork/

         git remote -v
         git remote add upstream https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY.git
         git remote -v

         git pull upstream master
         git push 
