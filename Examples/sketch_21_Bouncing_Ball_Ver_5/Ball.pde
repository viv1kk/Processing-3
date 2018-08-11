class Ball
{
  int x;
  int y;
  int size;
  int speedX = 2;
  int speedY = 2;


  Ball(int a, int b, int c)
  {
    x = a;
    y = b;
    size = c;
  }

  void display()
  {
    background(0);
    stroke(255);
    ellipse(x, y, size, size);
  }
  void update()
  {
    x = x+speedX;
    y = y+speedY;
  }

  void check()
  {
    if (x < size/2 || x >width-(size/2))
    {
      speedX = -speedX;
    }
    if (y < size/2 || y > height-(size/2))
    {
      speedY = -speedY;
    }
  }
}
