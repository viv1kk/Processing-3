class Bubble
{
  int x;
  int y;
  int size;
  int rad;
  int preX;
  int preY;
  boolean click;
  color fr;

  Bubble(int a, int b, int dia, color c)
  {
    x = preX = a;
    y = preY = b;
    size = dia;
    rad = dia/2;
    fr = c;
  }

  void display()
  {
    stroke(fr);
    strokeWeight(2);
    noFill();

    ellipse(x, y, size, size);
  }

  void check(Bubble other, Bubble other1, boolean click)
  {
    if (click)
    { 
      if (dist(x, y, mouseX, mouseY) < size && other.x == other.preX && other1.y == other1.preY)
      {
        x = mouseX;
        y = mouseY;
      } else
      {
        preX = x;
        preY = y;
      }
    }
  }
}
