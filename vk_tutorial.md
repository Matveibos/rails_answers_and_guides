1. How you can delete 30 dialogs by one click?  
          
           for(var i=1;i<30;i++) { 
              document.getElementsByClassName("nim-dialog--close _im_dialog_close")[i].click(); 
           }
           
2. How you can set like on all wall by one click?    
          
          # for browser version 
          for(var i = 0; i <= document.getElementsByClassName("post_like _like_wrap").length; i++) {
             document.getElementsByClassName("post_like _like_wrap")[i].click();
          }
          
          # for mobile version
          for(var i = 0; i <= document.getElementsByClassName('item_like _i').length; i++) {
             document.getElementsByClassName('item_like _i')[i].click();
          }
