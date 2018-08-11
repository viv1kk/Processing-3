// Source
// Daniel Shiffman
// The Coding Train
// https://www.youtube.com/watch?v=H7frvcAHXps&index=6&list=PLRqwX-V7Uu6bm-3M4Wntd4yYZGKwiKfrQ

float x;
float y;
float sizeX;
float sizeY;
float dis;

void setup()
{
  size(520, 520);
}

void draw()
{
  sizeX = 20;
  sizeY = 20;
  for (x = sizeX/2; x < width; x += sizeX)
  {
    for (y = sizeY/2; y < height; y += sizeY)
    {
      dis = dist(x, y, mouseX, mouseY);
      fill(dis);
      rectMode(CENTER);
      rect(x, y, sizeX, sizeY);
    }
  }
}
