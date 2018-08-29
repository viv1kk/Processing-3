import processing.video.*;

Particle[] p = new Particle[2000];
Capture cam;

int camScale = 2;   // Upscalling the Capture live image from Cam
void setup()
{
  size(1280, 720);
  cam = new Capture(this, Capture.list()[0]);

  for (int i = 0; i < p.length; i++)
  {
    p[i] = new Particle(camScale);
  }
  cam.start();
   background(0);
}

void captureEvent(Capture cam)
{
  cam.read();
}

void draw()
{
 
  
  //image(cam, 0, 0, width, height);
  
  for (int i = 0; i < p.length; i++)
  {
    p[i].display();
    p[i].move();
  }
}
