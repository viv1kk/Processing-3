class Button
{
  boolean mouse = false;
  int x;
  int y;
  int w;
  int h;
  Button()
  {
  }

  int count = 0;

  void display(boolean m, int cou)
  { 
    mouse = m;
    count = cou;

    if (mouse && count == 0)
    {
      x = mouseX;
      y = mouseY;
    }
    if (mouse && count == 1)
    {
      w = (int)dist(x, y, mouseX, y);
      h = (int)dist(x, y, x, mouseY);
      constrain(x, 0, width);
      constrain(y, 0, height);
    }
    fill(0);
    if (!mouse)
    {
      fill(255, 127, 127);
    }
    rect(x, y, w, h);
  }
}
