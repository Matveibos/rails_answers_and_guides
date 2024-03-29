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
       
       # you are on another branch and want to have last update from main branch
       # and move it before your branch
       
       git pull origin master
       git rebase master 
       
       # or in one action 
       git pull --rebase origin master
9. How you can add information to old last commit?
      
       git add .
       git commit --amend
10. How to remove something from git?
      
        git rm -rf public/uploads
11. How you can download branch from github?
        
        git fetch --all
        git checkout myBranch
        
        
        # certain branch
        git fetch <remote> <rbranch>:<lbranch> 
        # or just: git fetch <remote> <branch_name>
        git checkout <lbranch>
        
        # where <rbranch> is the remote branch or source ref and <lbranch> is the as yet non-existent local branch or destination ref you want to track and which you probably want to name the same as the remote branch or source ref.
        
11.1. How to download branch from github Pull Reqest?
      
      # ID - is PR number like '../pull/130'
      # Branch name - is a name for this branch on your local machine
      git fetch origin pull/ID/head:BRANCHNAME
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
        or git rebase -i HEAD~n # where n numbers of commit for the merge
        or git rebase --interactive [commit-hash]
        # where commit-hash is a 'bf7e745c' after which you want to start
        
        # then change 'pick' to 'squash'
        # delete message which you don't use
        # now you can push your changes
        git push origin master -f
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
24. How to undo last commit adn return back to the previuse commit?
        
        git log
        git reset --hard COMMIT_ID
25. How to download branch without merge conflict / Replace local branch with remote branch entirely
?
        
        git reset --hard origin/<branch_name>
26. How to add new ssh key to your account?
        
        https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
        https://help.github.com/enterprise/2.11/user/articles/adding-a-new-ssh-key-to-your-github-account/
27. How you can change account?

        For chnaging users you can remove github.com key Keychain Access program on mac
28. How to remove remote name?
        
        git remote remove some_name
29. How to set sublime as default code editor for git?
        
        git config --global core.editor "'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' -n -w "
30. How you can merge only one commit to your new branch?
        
        # use cherry-pick
        https://coderwall.com/p/emz8iw/git-cherry-pick
31. How to change commits body which has already existed in history?

        git rebase -i @~9   # Show the last 9 commits in a text editor
        
        Find the commit you want, change pick to e (edit), and save and close the file. Git will rewind to that commit, allowing you to either:

        use git commit --amend to make changes
        
        Then, run git rebase --continue, and Git will replay the subsequent changes on top of your modified commit. You may be asked to fix some merge conflicts.
        
32. How to rename branch?

        If you want to rename a branch while pointed to any branch, do:

        git branch -m <oldname> <newname>
        If you want to rename the current branch, you can do:

        git branch -m <newname>
        A way to remember this, is -m is for "move" (or mv), which is how you rename files.
33. How you can remove last commit?
      
        git rebase -i HEAD~n # where n numbers of commit for the merge
        and select drop
34. What is the best way for debbuging with help of git?
        

          git bisect start # start debbugging
          git bisect bad  # set the first commit as bad
          git bisect good erre34r4kk # set the first good commit
          
          # then you will go in the middle and you should check is it ok or not, and type bad or false
          
          # after finding write
          git bisect restart
          
35. How you see who touched a file?
        
          git blame name_of_file.txt
36. How to move commit from master to another branch?
        
        
        # Note: Any changes not committed will be lost.
        git branch newbranch      # Create a new branch, saving the desired commits
        git reset --hard HEAD~3   # Move master back by 3 commits (GONE from master)
        git checkout newbranch    # Go to the new branch that still has the desired commits
37. How to fix “Authentication Failed” github problems when two-factor authentication is enabled?
        
        git remote -v 
        git remote remove origin 
        git remote add origin git@github.com:user/repo.git 
38. How to make commit in the past time?
        
        git commit --date="10 day ago" -m "Your commit message"
        # or 
        git commit --date="Mon 8 Mar 2015 20:19:19 BST" --amend
39. How to add commit without any changes?
        
        git commit -m "temp" --allow-empty
40. How to cherry pick several commits?

        git cherry-pick first_commit~1..last_commit
        
        # don't forget to run git cherry-pick --continue if any conflict appears
        
41. How to continue merge after fixing conflicts?

        git merge origin/main 
        # conflict appears
        git add .
        git merge --continue
