PImage frog;
int col;
void setup()
{
  size(858, 536);
  frog = loadImage("frog.jpg");
}
int loc2;
void draw()
{
  background(0);
  loadPixels();
  frog.loadPixels();

  for (int x = 0; x < width; x++)
  {
    for (int y = 0; y < height; y++)
    {
      int loc1 = x + y * width;

      if (x + 1 < width)
      {
        loc2 = (x + 1) + y*width;
      }

      float b1 = brightness(frog.pixels[loc1]);
      float b2 = brightness(frog.pixels[loc2]);
      int diff = (int)abs(b1-b2);
      
      int map = (int)map(mouseX, 0, width, 0,diff);

      pixels[loc1] = color(diff+map*2);
    }
  }

  updatePixels();
}
