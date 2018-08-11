PImage frog;

void setup()
{
  size(858, 536);
  frameRate(50000);
  frog = loadImage("frog.jpg");
  background(0);
}

void draw()
{
  int x = (int)random(width);
  int y = (int)random(height);
  
  color c = frog.get(x,y);
  fill(c,125);
  noStroke();
  ellipse(x, y, 20, 20);
}
