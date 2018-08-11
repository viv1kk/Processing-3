class Bubble
{
  int x;
  int y;
  int size;
  PImage img;

  Bubble(int a, int b, int dia, PImage image)
  {
    x = a;
    y = b;
    size = dia;
    img = image;
  }

  void display()
  {
    imageMode(CENTER);
    image(img, x, y, size, size);
  }

  void ascend()
  {
    y--;
    y = y - (int)random(-0.5, 2.5);
    x = x+(int)random(-2, 2);
  }

  void check()
  {
    if(y < -size/2)
    {
      y = height+(size/2);
    }
  }
}
