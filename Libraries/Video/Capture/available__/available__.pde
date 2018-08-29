//********************************************************** available() ************************************************//


//Description 

//Returns "true" when a new video frame is available to read.


//Syntax  

//.available()

//Returns  boolean



import processing.video.*;

Capture cam;

void setup()
{
  size(640, 360);
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
