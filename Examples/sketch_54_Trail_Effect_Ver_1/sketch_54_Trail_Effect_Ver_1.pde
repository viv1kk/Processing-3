int[] x = new int[50];
int[] y = new int[50];

void setup()
{
  size(640, 360);
  frameRate(200);
  for (int i = 0; i < x.length; i++)
  {
    x[i] = 0;
    y[i] = 0;
  }
}

void draw()
{
  background(255);
  for (int i = 0; i < x.length-1; i++)
  {
    x[i] = x[i+1];
    y[i] = y[i+1];
  }
  x[x.length-1] = mouseX;
  y[y.length-1] = mouseY;

  for (int i = 0; i <x.length; i++)
  {
    noStroke();
    if (x[i] == 0 && y[i] == 0)
    {
      fill(255);
    } else {
      fill(255-i*5);
    }
    ellipse(x[i], y[i], i, i);
  }
}
