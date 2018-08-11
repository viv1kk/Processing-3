PImage img;

int count = 0;
Bubble[] b = new Bubble[100];

void setup()
{
  size(640, 360, P2D);
  img = loadImage("bubble.png");
  for (int i = 0; i < b.length; i++)
  {
    b[i] = new Bubble((int)random(width), (int)random(0.75*height,height), (int)random(20, 100));
  }
}

void draw()
{
  background(0);

  for (int i = 0; i < count; i++)
  {
    b[i].display();
    b[i].update();
    b[i].check();
  }
}

void mousePressed()
{
  if (count == 0 || count <b.length)
  {
    ++count;
  }
}

void keyPressed()
{
  if(count >0)
  --count;
}
