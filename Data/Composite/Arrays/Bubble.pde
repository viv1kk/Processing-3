class Bubble
{
  int x;
  int y;
  int size;

  Bubble(int a, int b, int c)
  {
    x = a;
    y = b;
    size = c;
  }

  void display()
  {
    fill(255, 170);
    ellipse(x, y, size, size);
  }

  void ascend()
  {
    y--;
    y = y-(int)random(-1, 1);
    if(x > size/2 || x< width-(size/2))
    x = x+(int)random(-2, 2);
  }
  
  void check()
  {
    if(y <= -size/2)
    {
      y = height+(size/2);
    }
  }
}
