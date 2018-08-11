class Bubble
{
  int x;
  int y;
  int dia;

  Bubble(int a, int b, int diameter)
  {
    x = a;
    y = b;
    dia = diameter;
  }

  boolean overlaps(Bubble other)
  {
    float d = dist(x, y, other.x, other.y);
    if (d <= (dia/2)+(other.dia/2))
    {
      return true;
    }
    else 
    return false;
  }

  void display()
  {
    stroke(255);
    strokeWeight(3);
    noFill();

    ellipse(x, y, dia, dia);
  }
}
