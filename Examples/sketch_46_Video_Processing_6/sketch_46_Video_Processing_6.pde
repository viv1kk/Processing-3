// Source
// Daniel Shiffman
// The Coding Train
// https://youtu.be/WCJM9WIoudI

// Slit-Scan Video

import processing.video.*;

Capture cam;
int x = 0;

void setup()
{
  size(1280, 360);
  frameRate(30);
  cam = new Capture(this,640,360,30);
  cam.start();
}

void captureEvent(Capture cam)
{
  cam.read();
}

void draw()
{
  int w = cam.width;
  int h = cam.height;
  copy(cam, w/2, 0, 1, h, x, 0, 1, h);
  x++;
  if (x == width)
  {
    x = 0;
  }
}
