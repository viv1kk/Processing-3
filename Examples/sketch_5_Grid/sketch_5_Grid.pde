// Source
// Daniel Shiffman
// The Coding Train
// https://www.youtube.com/watch?v=Z8s-7beNP1c&index=5&list=PLRqwX-V7Uu6bm-3M4Wntd4yYZGKwiKfrQ

float x;
float y;
float spacing;
float wt = 0;
float ht = 0;

void setup()
{
  size(640, 360);
}

void draw()
{
  background(0);
  stroke(255);
  strokeWeight(2);
  y = 0;
  spacing = 40;

  for (x = spacing; x < wt; x += spacing)
  {
    line(x, 0, x, height);
  }
  wt = wt+1;
  if (wt >= width)
  {
    for (y = spacing; y < ht; y += spacing)
    {
      line(0, y, width, y);
    }
    ht = ht+1;
  }
}
