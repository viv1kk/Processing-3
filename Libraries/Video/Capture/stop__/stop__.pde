//************************************************************ stop() *******************************************//


//Description 

//Stops capturing frames from an attached device.


//Syntax  

//.stop()


//Returns  void


import processing.video.*;

Capture cam;

void setup()
{
  size(640, 360);
  cam = new Capture(this, Capture.list()[0]);
}

void mousePressed()
{
  cam.start();
}

void keyPressed()
{
  cam.stop();
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
