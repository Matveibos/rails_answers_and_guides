1. How you can make text align center?
    
        text-align: center;

2. How you can make block align center?
        
        margin: 0 auto;

3. How you can show block one by one in one line?
        
        display: inline-block;
4. How you can align block by vertical?
        
        vertical-align: top;(bottom, middle)
5. How you can use position: absolute?
        
        add to parent position: relative
        add to child position: absolute
        and something like this:
        top: 50%;
        left: 50%;
        margin-left: -150px;
        margin-top: -50px;
        
6. How you can add glyphicon of facebook, vk, twitter?
        
        # add fontawesome css
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" >
        # add glyphicon 
        
            <i class="fa fa-twitter-square"></i>
            <i class="fa fa-facebook-square"></i>
            <i class="fa fa-vk"></i>
7. How you can change glyphicon icon size?

        <span class="glyphicon glyphicon-globe"></span>
        <span class="glyphicon glyphicon-globe fa-lg"></span>
        <span class="glyphicon glyphicon-globe fa-2x"></span>
        <span class="glyphicon glyphicon-globe fa-3x"></span>
        <span class="glyphicon glyphicon-globe fa-4x"></span>
        <span class="glyphicon glyphicon-globe fa-5x"></span>
8. How to delete circle from radio button?
        
        <input type='radio' value='2' name='radio'  id='radio2'/>
        
        input {
            visibility:hidden;
        }
9. Hot to set color by click n radiob button?

        .without_circle input[type="radio"]:checked + span{
          color:#000;
        }
10. How you can set element on all window?
        
        # 
        div {
            height:100vh;
        }
11. Is it possible to minus px from vh?
        
        height: calc(100% - 65px);
        # yes
        height: calc(100vh - 65px);
12. How to set brightness on half?
        
        img {
        width:250px;
        }
        #one:hover {
            -webkit-filter:brightness(50%);
            -moz-filter:brightness(50%);
            filter: url(#brightness); /* required for FF */
            filter:brightness(50%);
        }
        #two:hover {
            -webkit-filter:contrast(50%);    
            -moz-filter:contrast(50%);
             filter: url(#contrast);
            filter:contrast(50%);
        }
13. Article about image hover?
        
        https://line25.com/tutorials/image-hover-css-snippets
14. How to add spinner on center?
        
        <span id="searching_spinner_center" style="position: absolute;display: block;top: 50%;left: 50%;"></span>
15. How to set bacground images?
        
        # config/environments/production.rb
            config.assets.compile = true
        background: url('/assets/ico-location.png') no-repeat left center;
16. How to turn of a tag default color?
        
            a href="" style="text-decoration: none; color: inherit;"
17. How you can create link to phone?
            
            a href="callto:#{@main_salon.phone}"
                = @main_salon.phone
18. Tutorial about how you can add social button linnks to the right side of page?
        
        http://www.cssportal.com/blog/css-social-media-sidebar/
