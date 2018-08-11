PImage img;
Bubble[] b = new Bubble[50];

void setup()
{
  size(640, 360);
  img = loadImage("bubble.png");

  for (int i = 0; i < b.length; i++)
  {
    b[i] = new Bubble((int)random(width), (int)random((0.75)*height), (int)random(20, 100));
  }
}

void draw()
{
  background(0);
  for(int i = 0; i < b.length; i++)
  {
    b[i].display();
    b[i].ascend();
    b[i].check();
  }
}
