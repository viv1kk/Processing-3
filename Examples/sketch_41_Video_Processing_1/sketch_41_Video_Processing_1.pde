import processing.video.*;
Particle[] p = new Particle[2000];

Capture cam;

void setup()
{
  size(640, 360);
  for (int i = 0; i < p.length; i++)
  {
    p[i] = new Particle();
  }
  background(0);
  cam = new Capture(this, Capture.list()[0]);
  cam.start();
}

void captureEvent(Capture cam)
{
  cam.read();
}

void draw()
{
  for (int i = 0; i < p.length; i++)
  {
    p[i].display();
    p[i].move();
  }
}
