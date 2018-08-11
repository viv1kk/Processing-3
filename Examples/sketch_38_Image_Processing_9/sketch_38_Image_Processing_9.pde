PImage frog;

void setup()
{
  size(858, 536);
  frog = loadImage("frog.jpg");
  background(0);
}

void draw()
{

  for (int i = 0; i < 500; i++)
  {
    loadPixels();
    int x = (int)random(width);
    int y = (int)random(height);

    color c = frog.pixels[x+y*width];
    fill(c,25);
    noStroke();
    ellipse(x, y, 16, 16);
  }
  updatePixels();
}
