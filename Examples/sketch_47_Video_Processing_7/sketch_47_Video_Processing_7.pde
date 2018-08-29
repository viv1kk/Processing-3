// Verticle Slit-Scan Video

import processing.video.*;

Capture cam;
int x = 0;

void setup()
{
  size(640, 500);
  frameRate(30);
  cam = new Capture(this, 640, 480, 30);
  cam.start();
}

void captureEvent(Capture cam)
{
  cam.read();
}

void draw()
{
  int w = cam.width;

  copy(cam, 0, 0, w, 1, 0,x,w,1);
  x++;
  if (x == height)
  {
    x = 0;
  }
}
