class Stripes
{
  int x;
  int w;
  int speed;
  boolean mouse;

  Stripes()
  {
    x = (int)random(width);
    w = (int)random(10, 50);
    mouse = false;
    speed = (int)random(1, 10);
  }
  void display()
  {
    noStroke();
    if (mouse)
    {
      fill(255);
    } else
    {
      fill(255, 127);
    }

    rect(x, 0, w, height);
  }

  void move()
  {
    if (x >= width)
    {
      x = 0;
    } else
    {
      x+=speed;
    }
  }

  void check(int m)
  {
    int mx = m;
    if (mx >=x && mx <= x+w)
    {
      mouse = true;
    } else
    {
      mouse = false;
    }
  }
}
