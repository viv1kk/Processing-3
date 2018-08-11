Ball b1;
Ball b2;

void setup()
{
  size(640, 360);
  b1 = new Ball(200, 320, 100);
  b2 = new Ball(500, 320, 60);
}

void draw()
{
  background(0);

  b1.display();
  b2.display();

  b1.update();
  b2.update();

  b1.check();
  b2.check();
}

void mousePressed()
{
  b1.clicked();
  b2.clicked();
}
