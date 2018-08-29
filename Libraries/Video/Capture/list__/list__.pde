//******************************************************** list() **************************************************//


//Description 

//Gets a list of all available capture devices such as a camera. Use print() to write the information to the text window.


//Syntax  

//.list()


//Returns  String[]


import processing.video.*;

Capture cam;

void setup()
{
  size(640, 360);
  printArray(Capture.list());
  cam = new Capture(this, Capture.list()[0]);
  cam.start();
}

void draw()
{
  background(0);
  if (cam.available())
  {
    cam.read();
  }
  image(cam, 0, 0);
}
