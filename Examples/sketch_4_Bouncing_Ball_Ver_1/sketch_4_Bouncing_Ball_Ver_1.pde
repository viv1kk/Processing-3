float circleX;
float circleY;
float speedX;
float speedY;

void setup()
{
  size(640, 360);
  circleX = 30;
  circleY = height/2;
  speedX = 2;
  speedY = 2;
}

void draw()
{
  background(0);
  fill(255);
  ellipse(circleX, circleY, 25, 25);
  if (circleY >= height || circleY < height/2)
  {
    speedY = -speedY;
  }
  if (circleX >= width-30 || circleX < 30)
  {
    speedX = -speedX;
  }
  circleY=circleY+speedY;
  circleX=circleX+speedX;
}
