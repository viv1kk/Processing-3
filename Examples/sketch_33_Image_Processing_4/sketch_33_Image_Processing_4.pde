PImage frog;

void setup()
{
  size(858, 536);
  frameRate(200);
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
      int index = x + y * width;


      float r = red(frog.pixels[index]);
      float g = green(frog.pixels[index]);
      float b = blue(frog.pixels[index]);

      int d = (int) dist(mouseX, mouseY, x, y);
      float factor = map(d, 0, 200, 1.5, 0);

      pixels[index] = color(r*factor, g*factor, b*factor);
    }
  }
  updatePixels();
}
