class Ball
{
  int x;
  int y;
  
  Ball(int a, int b)
  {
    x = a;
    y = b;
  }
  
  void display()
  {
    noStroke();
    fill(0);
    ellipse(x,y, 30,30);
  }
}
