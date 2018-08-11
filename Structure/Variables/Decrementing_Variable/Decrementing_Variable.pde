float circleX;
float circleY;

void setup()
{
  size(640,360);
  circleX = width;
  circleY = height;
}

void draw()
{
  circleX = circleX - 1;  //circleX--;
  circleY = circleY - 0.55;  //circleY--;
  background(0);
  fill(mouseX,mouseY,circleX/circleY);
  ellipse(circleX,circleY,30,30);
}
