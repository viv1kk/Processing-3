//************************************************* dist() ***************************************************//


//Description  

//Calculates the distance between two points.

//Syntax  

//dist(x1, y1, x2, y2)
//dist(x1, y1, z1, x2, y2, z2)

//Parameters  

//x1  float: x-coordinate of the first point
//y1  float: y-coordinate of the first point
//z1  float: z-coordinate of the first point
//x2  float: x-coordinate of the second point
//y2  float: y-coordinate of the second point
//z2  float: z-coordinate of the second point

//Returns  float

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
  stroke(0);
  fill(0);
  for (x = sizeX/2; x < width; x += sizeX)
  {
    for (y = sizeY/2; y < height; y+= sizeY)
    { rectMode(CENTER);
      dis = dist(x, y, width/2, height/2);
      fill(dis);
      rect(x, y, sizeX, sizeY);
    }
  }
}
