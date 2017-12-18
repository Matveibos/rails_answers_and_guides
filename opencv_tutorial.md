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
1. How to save image from OpenCV?
    
          image = IplImage::load("path/to/file.jpg")
          image.save("m_image.png")

          # or with some way

          new_image = CvMat.load(image.file.file, CV_LOAD_IMAGE_COLOR)
          new_image.save_image("Test.jpg")

2. How to crop an image?
        
        sub = image.sub_rect(x,y, width, height)
