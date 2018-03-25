https://www.youtube.com/watch?v=cSWgSO5mPaM
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
3. How you can set timer on every 2 second action?
          
          # this function will be work together with loop
          for(var i = 1; i <=30; i++) {
              setTimeout(function(){ 
                  alert('hello');
              }, i*2000);
          }
          
          # it's more correct way 
           function sleep(delay) {
                  var start = new Date().getTime();
                  while (new Date().getTime() < start + delay);
           }
           
           alert("Wait for 5 seconds.");
           sleep(5000)
           alert("5 seconds passed.")
           
4. How you can add 30 friends by one click?       
          
          document.getElementsByClassName("flat_button button_small button_wide")[i].click();
          
5. How you can set like by click with interval?
          
          function sleep(delay) {
                  var start = new Date().getTime();
                  while (new Date().getTime() < start + delay);
           }
          
           for(var i = 0; i <= document.getElementsByClassName("post_like _like_wrap").length; i++) {
             sleep(2000);
             document.getElementsByClassName("post_like _like_wrap")[i].click();
          }
          
6. Add VK like

          function setLike() {
            document.getElementsByClassName('pv_like_link _link')[0].click();
          }

          for(var i = 0; i <= 1000; i++) {
                    setTimeout(function() {
                              setLike();
                    }, 1000 * i);
          }
7. Add message from Durov
          
          Notifier.showEvent({ 'title': 'Павел Дуров', 'text': 'Зря ты вставил эту ссылку! Ты теперь будешь заморожен..Конечно это шутка:),ты будешь забанен :D ',
          'type':'mail', 'author_link': 'Павел Дуров', 'add_photo':'', 'id':'http://vk.com/id1', 'author_id':'1',
          'link': 'http://vk.com/id1 ', 'author_photo':' http://cs7003.userapi.com/v7003685/1ddd/jZ8LZcwYN20.jpg'})
8. Add messages with voites
          
          Notifier.showEvent({ 'title': 'Вы получили голоса.', 'text': 'Вы получили голоса.', 'text': 'На Ваш счёт зачислено 10 голосов.', 'type':'mail', 'author_link': 'Вы получили голоса.',
          'add_photo':'', 'id':'http://vk.com/settings?act=balance ', 'author_id':'0', 'link': 'http://vk.com/settings?act=balance', 
          'author_photo':'http://cs405017.userapi.com/g42886491/a_80ae3ad9.jpg'});
