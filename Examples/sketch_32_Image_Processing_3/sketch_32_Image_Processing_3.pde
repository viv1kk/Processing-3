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
      float b = brightness(frog.pixels[index]);

      if (b > (255.0/width)*mouseX)
        pixels[index] = color(255);
      else
        pixels[index] = color(0);
    }
  }
  updatePixels();
}
