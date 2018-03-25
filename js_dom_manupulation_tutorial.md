# DOM ELEMENTS

1. How to set bacground-image src from object?
     
             # you can make interpolation 
             document.getElementById('image').style.backgroundImage = "url(" + this.src + ")";

3. How to add link link on one some page?
            
            h3#monument-edit
            # add onclick with hash
            button onclick="location.hash=''; location.hash='#monument-edit';"
4. Merge two hashes into one?

            Object.assign(t, v)
            
5. Create new elements and insert it inside onther tag?
          
          # create elem
          var el = document.createElement('p');
          el.id = my_marker.id;
          el.className = "coordinate";
          el.innerHTML = my_marker.position;
          
          # insert to another page
          my_div = document.getElementById("text");
          my_div.appendChild(el);
6. How to remove element?

          document.getElementById('elem_id').remove();
7. How to add action on click?
            
             var buttonAlert = document.getElementById('button-alert');
             buttonAlert.addEventListener('click', showAlert);
             
             function showAlert(e) {
               alert('hello');
             }
