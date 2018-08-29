import processing.video.*;

Capture cam;

void setup()
{
  size(640,360);
  cam = new Capture(this, Capture.list()[0]);
  cam.start();
}

void captureEvent(Capture cam)
{
  cam.read();
}

void draw()
{
  loadPixels();
  cam.loadPixels();
  for(int x = 0; x < cam.width; x++)
  {
    for(int y = 0; y < cam.height; y++)
    {
      int index = x+y*cam.width;
      
      float r = red(cam.pixels[index]);
      float g = green(cam.pixels[index]);
      float b = blue(cam.pixels[index]);
      
      float dist = dist(mouseX,mouseY,x,y);
      float map = map(dist,0,255,1.5,0);
      
      pixels[index] = color(r*map, g*map, b*map);
    } 
  }
  updatePixels();
}
