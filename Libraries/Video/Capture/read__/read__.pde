//********************************************************** read() ************************************************//


//Description  

//Reads the current video frame.


//Syntax  

//.read()


//Returns  void


import processing.video.*;

Capture cam;
Boolean cont = false;

void setup()
{
  size(640, 360);
  cam = new Capture(this, Capture.list()[0]);
  cam.start();
}

void mousePressed()
{
  cont = !cont;
}

void captureEvent(Capture cam)
{
  if (cont) {
    cam.read();
  }
}

void draw()
{
  background(0);
  if (cont)
  {
    image(cam, 0, 0);
  }
}
