Bubble b1;
Bubble b2;

void setup()
{
  size(640, 360);
  b1 = new Bubble(100, 100, 120);
  b2 = new Bubble(mouseX, mouseY, 250);
}

void draw()
{
  background(0);
  b2.x = mouseX;
  b2.y = mouseY;

  b1.display();
  b2.display();

  b2.overlaps(b1);
  b1.overlaps(b2);
}
