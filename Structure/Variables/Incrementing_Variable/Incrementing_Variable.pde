float ellipseX;
float ellipseY;

void setup()
{
  size(640, 360);
}

void draw()
{
  ellipseX = ellipseX + 1;
  ellipseY = ellipseY + 0.55;
  background(0);

  fill(ellipseX, ellipseY, ellipseX/ellipseY);
  ellipse(ellipseX, ellipseY, 30, 30);
}
