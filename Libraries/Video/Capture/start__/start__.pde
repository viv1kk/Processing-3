//********************************************************** start() *************************************************//


//Description  

//Starts capturing frames from an attached device.


//Syntax  

//.start()


//Returns  void


import processing.video.*;

Capture cam;
Boolean control = true;

void setup()
{
  size(640, 360);
  cam = new Capture(this, Capture.list()[0]);
}

void mousePressed()
{
  cam.start();
}

void captureEvent(Capture cam)
{
  cam.read();
}

void draw()
{
  background(0);
  image(cam, 0, 0);
}
