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
      int loc = x + y * width;
      int loc1 = 0;
      if (x+1 <width)
      {
        loc1 = (x+1) + y * width;
      }


      int r = (int)red(frog.pixels[loc]);
      int g = (int)green(frog.pixels[loc]);
      int b = (int)blue(frog.pixels[loc]);

      int r1 = (int)red(frog.pixels[loc1]);
      int g1 = (int)green(frog.pixels[loc1]);
      int b1 = (int)blue(frog.pixels[loc1]);

      int difr = abs(r - r1);
      int difg = abs(g - g1);
      int difb = abs(b - b1);

      int mapr = (int)map(mouseX, 0, width, 0, difr);
      int mapg = (int)map(mouseX, 0, width, 0, difg);
      int mapb = (int)map(mouseX, 0, width, 0, difb);

      pixels[loc] = color(difr+mapr*2, difg+mapg*2, difb+mapb*2);
    }
  }
  updatePixels();
}
