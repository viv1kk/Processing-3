// Bouncing Ball by using Object

Ball b1;
Ball b2;

void setup()
{
  size(640, 360, P2D);
  b1 = new Ball((int)random(40,50), (int)random(height), (int)random(40,50), 1);
  b2 = new Ball((int)random(width-40,width-50), (int)random(height), (int)random(40,50),-1);
}

void draw()
{
  background(0);

  b1.display();
  b1.update();
  b1.checkEdges();

  b2.display();
  b2.update();
  b2.checkEdges();
}
