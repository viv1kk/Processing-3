class Football
{
  int x;
  int y;
  int size;

  int speedX = 2;
  int speedY = 2;

  Football(int a, int b, int dia)
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
    x = x + speedX + (int)random(-1, 1);
    y = y + speedY + (int)random(-1, 1);
  }

  void check()
  {
    if (x <= size/2 || x >= width - size/2)
    {
      speedX = -speedX;
    }
    if (y <= size/2 || y >= height - size/2)
    {
      speedY = -speedY;
    }
  }
}
