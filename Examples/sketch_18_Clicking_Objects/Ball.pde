class Ball
{
  int x;
  int y;
  int size;
  color d;

  Ball(int a, int b, int c)
  {
    x = a;
    y = b;
    size = c;
    d = color(255); 
  }

  void display()
  {
    fill(d);
    ellipse(x, y, size, size);
  }

  void update()
  {
    y--;
  }
  
  void check()
  {
    if (y <= (size/2))
    {
      y = size/2;
    }
  }
  
  void clicked()
  {
    float a = dist(x,y,mouseX,mouseY);
    if(a <= size/2)
    {
      d = color(random(255),random(255),random(255));
    }
  }
}
