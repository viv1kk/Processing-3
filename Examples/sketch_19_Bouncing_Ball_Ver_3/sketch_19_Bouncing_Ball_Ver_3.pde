// Bouncing Ball by using Object

Ball b1;

void setup()
{
  size(640, 360,P2D);
  b1 = new Ball(50, height/2, 50);
}

void draw()
{
  background(0);

  b1.display();
  b1.update();
  b1.checkEdges();
}
