Particle[] p = new Particle[1000];
PImage frog;

void setup()
{
  size(858,536);
  frog = loadImage("frog.jpg");
  for (int i = 0; i < p.length; i++)
  {
    p[i] = new Particle();
  }
    background(0);
}

void draw()
{

  for (int i = 0; i < p.length; i++)
  {
    p[i].display();
    p[i].move();
  }
}
