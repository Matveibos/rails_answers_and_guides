1. How to save image from OpenCV?
    
          image = IplImage::load("path/to/file.jpg")
          image.save("m_image.png")

          # or with some way

          new_image = CvMat.load(image.file.file, CV_LOAD_IMAGE_COLOR)
          new_image.save_image("Test.jpg")

2. How to crop an image?
        
        sub = image.sub_rect(x,y, width, height)
