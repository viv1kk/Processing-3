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
    imageMode(CENTER);
    image(img, x, y, size, size);
  }

  void ascend()
  {
    y--;
    y = y - (int)random(-2.0, 2.0);
    x = x + (int)random(-2, 2);
  }

  void check()
  {
    if (y <= -size/2)
    {
      y = height+(size/2);
    }
  }
}
