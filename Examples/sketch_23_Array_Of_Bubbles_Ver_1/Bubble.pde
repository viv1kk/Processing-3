class Bubble
{
  int x;
  int y;
  int size;

  Bubble(int a, int b, int dia)
  {
    x = a;
    y = b;
    size = dia;
  }

  void display()
  {
    fill(255);
    ellipse(x, y, size, size);
  }

  void ascend()
  {
    y--;
    x = x+(int)random(-2, 2);
  }

  void check()
  {
    if (y <=size/2)
    {
      y = size/2;
    }
  }
}
