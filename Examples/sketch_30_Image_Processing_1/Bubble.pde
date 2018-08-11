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
  }

  void check()
  {
    if (y <= -size/2)
    {
      y = height+(size/2);
    }
  }
}
