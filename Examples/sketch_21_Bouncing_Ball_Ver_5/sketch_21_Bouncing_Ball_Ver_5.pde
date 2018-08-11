Ball b;
boolean h = true;
void setup()
{
  size(640, 360, P2D);
  b = new Ball(50, 100, 50);
}

void draw()
{

  if (h) 
  {
    b.display();
    b.update();
    b.check();
  }
}

void mousePressed()
{
  h = !h;
}
