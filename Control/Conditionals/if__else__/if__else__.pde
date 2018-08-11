void setup()
{
  size(640, 360);
}

void draw()
{
  background(0);
  if (mouseY<height/2)
  {
    if (mouseX<width/2)
    {
      fill(255, 0, 0);
      rectMode(CENTER);
      rect(width/4, height/4, width/2, height/2);
    }
    if (mouseX>width/2)
    {
      fill(0, 255, 0);
      rectMode(CENTER);
      rect(width*3/4, height/4, width/2, height/2);
    }
  }
  else if(mouseY>height/2)
  {
        if(mouseX<width/2)
    {
      fill(0,0,255);
      rectMode(CENTER);
      rect(width/4,height*3/4,width/2,height/2);
    }
        if(mouseX>width/2)
    {
      fill(255,255,0);
      rectMode(CENTER);
      rect(width*3/4,height*3/4,width/2,height/2);
    }
  }
}
