int x = 0;
int y = 0;
int state = 0;
int speed = 15;
int mod = 0;

int totalArea = 0;
int squareArea = 15*15;
int totalSquare = 0;
int count = 1;

void setup()
{
  size(645, 360);
background(0);
  totalArea = width * height;
  totalSquare = totalArea/squareArea;
}

void draw()
{ 
    
  float mapX = map(x, 0, width, 0, 255);
  float mapY = map(y, 0, height, 0, 255);
  strokeWeight(1);
  stroke(mapX, mapY, abs(mapX-mapY));
  //fill(mapX,mapY,abs(mapX-mapY));
  rect(x, y, 15, 15);

  if (count < totalSquare)
  {
    if (state == 0)
    {
      x+=speed;
      if (x >=width-mod-15)
      {
        state = 1;
      }
    } else if (state == 1)
    {
      y+=speed;
      if (y >=height-mod-15)
      {
        state = 2;
      }
    } else if (state == 2)
    {
      x-=speed;
      if (x <= mod)
      {
        state = 3;
      }
    } else if (state == 3)
    {
      y-=speed;
      if (y <= mod+15)
      {
        mod = mod+15;
        state = 0;
      }
    }
    x = constrain(x, 0, width-15);
    y = constrain(y, 0, height-15);
  }
  ++count;
}
