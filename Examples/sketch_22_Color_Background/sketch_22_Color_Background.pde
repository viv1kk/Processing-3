Bubble b1;
Bubble b2;
Bubble b3;
boolean click = false;

void setup()
{
  size(255, 255);
  b1 = new Bubble(100, 100, 30, color(255, 0, 0));
  b2 = new Bubble(220, 220, 30, color(0, 255, 0));
  b3 = new Bubble(100, 220, 30, color(0, 0, 255));
}

void draw()
{
  background(b1.x, b2.x, b3.x, (int)((b1.y+b2.y+b3.y)/3));

  b1.display();
  b2.display();
  b3.display();

  b1.check(b2, b3, click);
  b2.check(b1, b3, click);
  b3.check(b1, b2, click);
}

void mouseClicked()
{
  click = !click;
}
