// Resizable Regular PENTAGON

float centerX = 0;
float centerY = 0;

float topX = 0;
float topY = 0;

float preX = 0;
float preY = 0;

float bottomX = 0;
float bottomY = 0;

float returnX = 0;
float returnY = 0;

void setup()
{
  size(640, 360);
}

void draw()
{ 
  background(0);
  centerX = mouseX;
  centerY = mouseY;
  stroke(255);
  strokeWeight(2);
  pentagon(50);
}

void pentagon(float len)
{
  int count = 0;
  
  // CENTER

  //point(centerX, centerY);

  // PENTAGON

  //for (count = counter(count); count <= 5; count = counter(count))
  //{
  //  value(len, count);
  //  point(returnX, returnY);
  //}

  // CLOCKWISE

  noFill();
  beginShape();

  // VERTEX 1

  count = counter(count); 
  value(len, count);
  vertex(returnX, returnY);

  // VERTEX 2

  count = counter(count); 
  value(len, count);
  vertex(returnX, returnY);

  // VERTEX 3

  count = counter(count); 
  value(len, count);
  vertex(returnX, returnY);

  // VERTEX 4

  count = counter(count); 
  value(len, count);
  vertex(returnX, returnY);

  // VERTEX 5

  count = counter(count); 
  value(len, count);
  vertex(returnX, returnY);

  endShape(CLOSE);
}

void value(float len, int count)
{
  float a = 0;
  float b = 0;

  for (int x = (int)(centerX-center(len)); x <= (int)(centerX+center(len)); x++)
  {
    for (int y = (int)(centerY-center(len)); y <= (int) centerY+hight(len); y++)
    {
      if (x == centerX && y == centerY+hight(len))
      {
        bottomX = x;
        bottomY = y;
      }
      switch(count)
      {
      case 1:

        a = (int)dist(centerX, centerY, x, y);
        if (a == center(len) && x == centerX && y <= centerY)
        {
          returnX = topX = x;
          returnY = topY = y;
        }
        break;

      case 2 :

        case3(x, y, len);
        a = (int)dist(topX, topY, x, y);
        b = (int)dist(preX, preY, x, y);

        if (a == len && b == len && x >= centerX && y <= centerY)
        {
          returnX = x;
          returnY = y;
        }
        break;

      case 3:

        case3(x, y, len);

        returnX = preX;
        returnY = preY;
        break;

      case 4:
        //bottom(len);
        case4(x, y, len);

        returnX = preX;
        returnY = preY;
        break;

      case 5:

        case4(x, y, len);

        a = (int)dist(topX, topY, x, y);
        b = (int)dist(preX, preY, x, y);

        if (a == len && b == len && x <= centerX && y <= centerY)
        {
          returnX = x;
          returnY = y;
        }
        break;
      }
    }
  }
}

void case3(int x, int y, float len)
{
  float a = 0;
  float b = 0;

  a = (int)dist(bottomX, bottomY, x, y);
  b = (int)(len/2);

  if (a == b)
  {
    preX = bottomX + b;
    preY = bottomY;
  }
}

void case4(int x, int y, float len)
{
  float a = 0;
  float b = 0;

  a = (int)dist(bottomX, bottomY, x, y);
  b = (int)(len/2);

  if (a == b)
  {
    preX = bottomX - b;
    preY = bottomY;
  }
}

float center(float len)
{
  float rad = -sin(54); 
  float base = len/2; 
  float size = (int)(base/rad); 
  return size;
}

float hight(float len)
{
  float rad = -cos(54); 
  float hight = (int)(rad * center(len));
  return hight;
}

int counter(int count)
{
  return ++count;
}
