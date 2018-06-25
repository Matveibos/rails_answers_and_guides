# `CSS`
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
19. How to start from new line after float: right?
        
        # add both: clear
        <br style="clear:both" />
20. How to add show on hover?

        img:hover {
          box-shadow: 0 0 30px rgba(33,33,33,.5);
        }
21. How to “crop” a rectangular image into a square with CSS?

        img {
          object-fit: cover;
          width:230px;
          height:230px;
        }
22. How you can remove horizontal scrooling?
          
          overflow-x: hidden;
23. How you can highlight input field only if field invalid?
        
        input:required:invalid {
	        background: red;
	}
24. How you can change input on focus?
          
          input:focus {
             background-color: red;
          }
25. How you can edit content inside html browser?
	
		<div contenteditable="">hello</div>
26. How to set text to upper case?
		
		p.uppercase {
		    text-transform: uppercase;
		}
27. How to set background image on full screen size?

		background-image: url('../images/intro-image.jpg');
		background-size: 100%;
		background-repeat: no-repeat;
		
		# or background-size: cover;
28. How you can make vertical alligment?
		
		.intro {
		  display: table;
		}
		
		.intro .inner {
	          display: table-cell;
		  vertical-align: middle;
		}
29. How to set real height and width without padding/border/margin?
		
		box-sizing: border-box;

# `BXSLIDER`
1. How to add full screen slider?

		# 1. add ordinary slider
		# 1. add to html

		<ul class="bxslider">
		  <li style="background-image: url('http://bxslider.com/images/home_slides/hillside.jpg');"></li>
		    <li style="background-image: url('http://bxslider.com/images/home_slides/houses.jpg');"></li>
		  <li style="background-image: url('http://bxslider.com/images/home_slides/hillside.jpg');"></li>
		    <li style="background-image: url('http://bxslider.com/images/home_slides/houses.jpg');"></li>
		</ul>
		
		# 2. to css
		*{
		    margin: 0px;
		    padding: 0px;
		}
		body, html{
		    height: 100%;
		}
		.bx-viewport, .bx-wrapper{
		    position:relative;
		    width:100%;
		    height:100% !important;
		    top:0;
		    left:0;
		}
		.bxslider, .bxslider li{
		    height: 100% !important;;
		}
		.bxslider li{
		    background-repeat: no-repeat;
		    background-position: top center;
		    background-size: cover;
		}
		.bx-wrapper .bx-viewport{
		    border: none !important;
		}
		
		# 3. to js
		$(document).ready(function(){
		    $('.bxslider').bxSlider({
			  mode: 'fade',
			  captions: false,
			  auto:true,
			  pager:false
		    });
		});
2. How to remove buttons from slider?
	
	    $('.bxslider').bxSlider({
		speed: 3000,
		controls: false,
		auto: true,
		autoControls: false,
		touchEnabled: true,
		pager: false // <-------
		}); 
	    });
# `FLICKITY`
1.  Where you can find all needed option?
	
	https://flickity.metafizzy.co/v1/options.html


2. How you can aling image by center??
		
		# set 
			margin: 0 auto;
		# for bootstrap
			.center-block

# FONTS
3. How to correctly add own fonts?
		
	      @font-face {
		font-family: myFont;
		src: url(bebas.ttf);
		font-weight: bold;
	      }
	      div {
		font-family: myFont;
	      }
29. How to add google fonts through css?
	
		@import url('https://fonts.googleapis.com/css?family=Open+Sans');
# ANIMATION

1. How to add an element expanding on hover?

		# transition 
	
		.trans {
		  width: 200px;
		  height: 200px;
		  background: blue;
		  transition: width 2s, height 2s;
		}
		.trans:hover {
		  width: 300px;
		  height: 300px;
		}
2. How to rotate elements?
		
		# transition: transform 2s;
	
		.trans {
		  width: 200px;
		  height: 200px;
		  background: blue;
		  transition: transform 2s ;
		}
		.trans:hover {
		  transform: rotate(180deg);
		}		
3. How to add animation by parts?
		
		@keyframes example {
		  0% {
		    background-color: red;
		  }
		  50% {
		    background-color: blue;
		  }
		  100% {
		    background-color: green;
		  }
		}
		.trans {
		  width: 200px;
		  height: 200px;
		  background: red;
		  animation-name: example;
		  animation-duration: 4s;
		}
4. On a CSS hover event, can I change another div's styling?
 	
		If #b is a descendant of #a, you can simply use #a:hover #b
		
		f #b comes immediately after #a: http://jsfiddle.net/u7tYE/

		#a:hover + #b {
		    background: #ccc
		}

		<div id="a">Div A</div>
		<div id="b">Div B</div>
	
		If there are other elements between #a and #b, you can use this: http://jsfiddle.net/u7tYE/1/

		#a:hover ~ #b {
		    background: #ccc
		}

		<div id="a">Div A</div>
		<div>random other elements</div>
		<div>random other elements</div>
		<div>random other elements</div>
		<div id="b">Div B</div>

5. How to exend your class from another class logic?
		
		.my_class {
		   @extend .btn-link:hover
		}
		
