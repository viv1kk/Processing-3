void setup()
{
  size(1280,720);
  background(255);
}

void draw()
{
  stroke(0);
  if (mouseButton == LEFT)
  {
    stroke(0);
    strokeWeight(2);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  if(mouseButton == RIGHT)
  {
    stroke(255);
    strokeWeight(20);
    point(mouseX,mouseY);
  }
}

void keyPressed()
{
  background(255);
}
