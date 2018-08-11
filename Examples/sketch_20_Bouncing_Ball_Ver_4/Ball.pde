class Ball
{
  int x;
  int y;
  int size;
  int Xspeed;
  int Yspeed;

  Ball(int a, int b, int c,int d)
  {
    x = a;
    y = b;
    size = c;

    Xspeed = 2*d;
    Yspeed = 2;
  }

  void display()
  {
    stroke(255);
    ellipse(x, y, size, size);
  }

  void update()
  {

    x = x+Xspeed;
    y = y+Yspeed;
  }

  void checkEdges()
  {
    if (x < size/2 || x >= width-size/2)
    {
      Xspeed = -Xspeed;
    }
    if (y < size/2 || y >= height-size/2)
      Yspeed = -Yspeed;
  }
}
