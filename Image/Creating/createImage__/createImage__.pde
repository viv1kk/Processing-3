//***************************************************** createImage() ********************************************//


//Description  

//Creates a new PImage (the datatype for storing images). This provides a fresh buffer of pixels to play with. 
//Set the size of the buffer with the width and height parameters. The format parameter defines how the pixels are stored. 
//See the PImage reference for more information. 

//Be sure to include all three parameters, specifying only the width and height (but no format) will produce a strange error. 

//Advanced users please note that createImage() should be used instead of the syntax new PImage().


//Syntax  

//createImage(w, h, format)


//Parameters  

//w  int: width in pixels
//h  int: height in pixels
//format  int: Either RGB, ARGB, ALPHA (grayscale alpha channel)


//Returns  PImage



PImage img = createImage(320+60, 240, ARGB);

void setup()
{
  size(640, 360);
  img.loadPixels();
  for (int i = 0; i < img.width; i++)
  {
    for (int j = 0; j < img.height; j++)
    {
      int map = (int)map(i,0,img.width,0,255);
      img.pixels[i+j*img.width] = color(100, 285, 155,map);
    }
  }
  updatePixels();
}

void draw()
{
  background(0);
  imageMode(CORNER);
  image(img, 0, 0);
  imageMode(CENTER);
  image(img,mouseX,mouseY);
}
