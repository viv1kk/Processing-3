PImage img;
Football f;

void setup()
{
  size(640, 360, P2D);
  img = loadImage("football.png");
  f = new Football(300,200,125);
}

void draw()
{
  background(0);
  f.display();
  f.update();
  f.check();
}
