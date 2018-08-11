float circleX = 30;
float xspeed = 5;
boolean move = false;

void setup()
{
  size(640, 360);
}

void draw()
{
  background(0);
  if (circleX <30 || circleX >= width-30)
  {
    xspeed = -xspeed * 1.09;
  }
  if (move) {
    circleX = circleX+xspeed;
  }
  ellipse(circleX, height/2, 25, 25);
}

void mousePressed()
{
  move=!move;
}
