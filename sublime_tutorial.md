1. How you can install emmet plagin?
          
          1) go to view -> show console
             add there:
             import urllib.request,os,hashlib; h = 'df21e130d211cfc94d9b0905775a7c0f' + '1e3d39e33b79698005270310898eea76'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
             restart sublime
          2) Ctrl + Shift + p
              press Package Control - > Install package 
              select emmet 
              then restart sublime
              
2. How you can use emmet?  
          
          ! + tab 
          div.class_name + tab
          div.id_name + tab
          aside>ul>li*5 + tab
          
3. How you can install Prettify plagin?
          
          - Ctrl+Shift+P or Cmd+Shift+P in Linux/Windows/OS X
          -  type install, select Package Control: Install Package
          - type prettify, select HTML-CSS-JS Prettify
          
4. How you can run prettify?
          
          Ctrl+Shift+P and type htmlprettify
          # or 
          Ctrl+Shift+H
5. How you can set 2 spcases instead tab in Ruby?
          
          1. open a rb file
          2. Sublime Text -> Preferences -> Settings -> Syntax Specific
          3. This should open a settings window named Ruby.sublime_settings
          Save these settings:

                    {
                      "tab_size": 2,
                      "translate_tabs_to_spaces": true
                    }
                    
                    
                    
6. How you can disable package?
          
          ctr+shift+p and type disable 

7. How to change default syntax?
          
          http://joncaveman.com/2015/08/11/sublime-text-3-default-syntax-highlighting-for-file-types/
8. What is the name of package which can higlighth trailking space?
          
          TrailingSpace
9. How you can select all equla value?
                    
          ctrl + cmd + G
