// Source
// Daniel Shiffman
// The Coding Train
// https://www.youtube.com/watch?v=H7frvcAHXps&list=PLRqwX-V7Uu6bm-3M4Wntd4yYZGKwiKfrQ&index=6

float x;
float y;
float sizeX;
float sizeY;

void setup()
{
  size(1280,720);
}

void draw()
{
  background(0);
  stroke(255);
  strokeWeight(0);

  
  sizeX = 10;
  sizeY = 10;
  for (x = 0; x <= width; x += sizeX)
  {
    for (y = 0; y<= height; y += sizeY)
    {
        fill(random(255),random(255),random(255));
       rect(x,y,sizeX,sizeY);
    }
  }
}
