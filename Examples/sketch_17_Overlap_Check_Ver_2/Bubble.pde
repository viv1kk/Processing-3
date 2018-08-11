class Bubble
{
  int x;
  int y;
  int rad;
  color r;

  Bubble(int a, int b, int c)
  {
    x = a;
    y = b;
    rad = c/2;
    r = 0;
  }

  void display()
  {

    stroke(255);
    strokeWeight(3);
    fill(r);

    ellipse(x, y, 2*rad, 2*rad);
  }

  void overlaps(Bubble other)
  {
    float a = dist(x, y, other.x, other.y);
    if (a <= (rad+other.rad))
    {
      other.r = color(255,0,0,127);
      r = color(0,255,0,127);
    } else
    {
      r = color(0);
      other.r = color(0);
    }
  }
}
