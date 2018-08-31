Snake s;

void setup()
{
  size(640,360);
  frameRate(200);
  s = new Snake(50);
  
}

void draw()
{
  background(255);
  for (int i = 0; i < s.x.length-1; i++)
  {
    s.x[i] = s.x[i+1];
    s.y[i] = s.y[i+1];
  }

  s.x[s.x.length-1] = mouseX;
  s.y[s.y.length-1] = mouseY;
  s.displayTrail();
}
