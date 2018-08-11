Bubble b1;
Bubble b2;

void setup()
{
  size(640, 360);
  b1 = new Bubble(100, 100, 80);
  b2 = new Bubble(537, 257, 200);
}

void draw()
{  
  background(0);
  b2.x = mouseX;
  b2.y = mouseY;
  
  if(b1.overlaps(b2))
  {
    background(255,255,0);
  }

  b1.display();
  b2.display();
}
