1. How to include opencv?
        
        require 'opencv'

        include OpenCV
2. How to create window with video?
        
        window = GUI::Window.new("convexhull")
        capture = CvCapture::open("../k3v.avi")
        
        loop do
            image = capture.query
            window.show image
            
            exit if GUI::wait_key(1)
        end
3. How to include api camera?
        
        # just like the video too
        CvCapture::open("http://10.6.88.46:1978/1")
        
4. How to translate Image to gray(and binary)?
        
        gray = image.BGR2GRAY
        
        # where the first and the seconds args it's level of white/dark
        bin = gray.threshold(0x77, 0xFF, :binary)
        # or
        gray.threshold(127,255,0)
5. How to traslate image to Gray with better quality?
        
        # using gaussian c
        gray.adaptive_threshold(255, :adaptive_method => CV_ADAPTIVE_THRESH_GAUSSIAN_C,
                                    :threshold_type => CV_THRESH_BINARY, :block_size => 11,
                                    :param1 => 5)
1. How to save image from OpenCV?
    
          image = IplImage::load("path/to/file.jpg")
          image.save("m_image.png")

          # or with some way

          new_image = CvMat.load(image.file.file, CV_LOAD_IMAGE_COLOR)
          new_image.save_image("Test.jpg")

2. How to crop an image?
        
        sub = image.sub_rect(x,y, width, height)
3. How to add circle to an image?
        
        # first - coordinate, second - size
        image.circle!(CvPoint.new(place_x, place_y), 60, :color => CvColor::Red, :thickness => 3, :line_type => :aa)
4. How to add text to an image?
        
        # first - text, second - point coordinate
        image.put_text!(area.to_s, CvPoint.new(place_x, place_y) , CvFont.new(:simplex), CvColor::Blue )
5. How to write countours?
        
          # create black/white image
          image = capture.query
          gray = image.BGR2GRAY
          thresh = gray.threshold(127,255,0)
          
          # draw
          contours = thresh.find_contours(mode: CV_RETR_TREE, method: CV_CHAIN_APPROX_SIMPLE)
          image.draw_contours!(contours, CvColor::Red, CvColor::Black, 2, :thickness => 1, :line_type => :aa)
