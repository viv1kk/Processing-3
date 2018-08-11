float circleX;
float temp;
void setup()
{
  size(640,360);
  circleX = 20;
  temp = circleX;
}

void draw()
{
  circleX = circleX + 1;  //++circleX;
  background(0);
  fill(255);
  if(circleX >=width-20)
  {
    circleX = temp;
  }
  ellipse(circleX,180,25,25);
}
