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

float e = 0;
float f = 0;

void setup()
{
  size(640, 360);
  background(0);
}

void draw()
{ 
  //background(0);

  stroke(255);
  strokeWeight(2);
}
void mousePressed()
{ 
  centerX = mouseX;
  centerY = mouseY;

  pentagon(50);
}


void pentagon(float len)
{
  int count = 0;
  // CENTER
  //point(centerX, centerY);
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

  // VERTEX 5

  count = counter(count); 
  value(len, count);
  vertex(returnX, returnY);

  // VERTEX 6

  count = counter(count); 
  value(len, count);
  vertex(returnX, returnY);

  // VERTEX 7

  count = counter(count); 
  value(len, count);
  vertex(returnX, returnY);

  // VERTEX 8

  count = counter(count); 
  value(len, count);
  vertex(returnX, returnY);

  // VERTEX 9

  count = counter(count); 
  value(len, count);
  vertex(returnX, returnY);

  // VERTEX 10

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

      case 2:
        case3(x, y, len);
        a = (int)((topX+preX)/2);
        b = (int)((topY+preY)/2);

        returnX = (int)((centerX+a)/2);
        returnY = (int)((centerY+b)/2);
        break;

      case 3:
        case3(x, y, len);

        returnX = e = preX;
        returnY = f = preY;
        break;

      case 4:
        case5(x, y, len);
        a = (int)((e+preX)/2);
        b = (int)((f+preY)/2);

        returnX = (int)((centerX+a)/2);
        returnY = (int)((centerY+b)/2);
        break;

      case 5:

        case5(x, y, len);

        returnX = e = preX;
        returnY = f = preY;
        break;

      case 6:
        case7(x, y, len);
        a = (int)((e+preX)/2);
        b = (int)((f+preY)/2);

        returnX = (int)((centerX+a)/2);
        returnY = (int)((centerY+b)/2);
        break;

      case 7:
        case7(x, y, len);

        returnX = e = preX;
        returnY = f = preY;
        break;

      case 8:
        case9(x, y, len);
        a = (int)((e+preX)/2);
        b = (int)((f+preY)/2);

        returnX = (int)((centerX+a)/2);
        returnY = (int)((centerY+b)/2);
        break;      

      case 9:
        case9(x, y, len);

        returnX = preX;
        returnY = preY;
        break;

      case 10:
        a = (int)((topX+preX)/2);
        b = (int)((topY+preY)/2);

        returnX = (int)((centerX+a)/2);
        returnY = (int)((centerY+b)/2);
        break;
      }
    }
  }
}

void case3(int x, int y, float len)
{
  float a = 0;
  float b = 0;

  case5(x, y, len);
  a = (int)dist(topX, topY, x, y);
  b = (int)dist(preX, preY, x, y);

  if (a == len && b == len && x >= centerX && y <= centerY)
  {
    preX = x;
    preY = y;
  }
}

void case5(int x, int y, float len)
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

void case7(int x, int y, float len)
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

void case9(int x, int  y, float len)
{
  float a = 0;
  float b = 0;

  a = (int)dist(topX, topY, x, y);
  b = (int)dist(preX, preY, x, y);

  if (a == len && b == len && x <= centerX && y <= centerY)
  {
    preX = x;
    preY = y;
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
