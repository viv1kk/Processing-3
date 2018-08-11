PImage frog;

void setup()
{
  size(858, 536);
  frog = loadImage("frog.jpg");
}

void draw()
{
  background(0);
  
  loadPixels();
  frog.loadPixels();

  for (int x = 0; x < width; x++)
  {
    for (int y = 0; y < height; y++)
    {
      int index = x+y*width;
      
      //pixels[index] = frog.pixels[index];
      
      float r = red(frog.pixels[index]);
      float g = green(frog.pixels[index]);
      float b = blue(frog.pixels[index]);
      
      pixels[index] = color(r,g,b);
      
    }
  }
  updatePixels();
}
