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

  void update()
  {
    y--;
  }

  void check()
  {
    if (y <=-size/2)
    {
      y = height+size/2;
    }
  }
}
