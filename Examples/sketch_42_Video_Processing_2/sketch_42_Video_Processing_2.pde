import processing.video.*;

Capture cam;

void setup()
{
  size(640, 360);
  cam = new Capture(this, Capture.list()[0]);
  cam.start();
}

void captureEvent(Capture cam)
{
  cam.read();
}

void draw()
{
  background(0);
  loadPixels();
  cam.loadPixels();
  
  for (int x = 1; x < cam.width; x++)
  {
    for (int y = 0; y < cam.height; y++)
    {
      float b1 = brightness(cam.pixels[x+y*cam.width]);
      float b2 = brightness(cam.pixels[(x-1)+y*cam.width]);
      float val = abs(b1-b2);
      float map = map(mouseX,0,cam.width,0,val);
      colorMode(HSB);
      pixels[x+y*width] = color(val+map);
    }
  }
  updatePixels();
}
