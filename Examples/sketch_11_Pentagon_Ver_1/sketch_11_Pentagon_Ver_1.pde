// Pentagon through Calculations

float centerX = 0;
float centerY = 0;

float topX = 0;
float topY = 0;

float returnX = 0;
float returnY = 0;

float preX = 0;
float preY = 0;

float c = 0;
float d = 0;

void setup()
{
  size(640, 360);
}

void draw()
{
  background(0);
  stroke(255);
  strokeWeight(2);
  centerX = mouseX;
  centerY = mouseY;
  pentagon(50);
}

void pentagon(float len)
{

  int count = 0;
  float size = center(len);
  point(centerX, centerY);

  //for (count = counter(count); count <= 5; count = counter(count))
  //{
  //  value(len, size, high, count);
  //  point(returnX, returnY);
  //}

  noFill();
  beginShape();

  // VERTEX 1

  count = counter(count);
  value(len, size, count);
  vertex(returnX, returnY);

  // VERTEX 2

  count = counter(count);
  value(len, size, count);
  vertex(returnX, returnY);

  // VERTEX 3

  count = counter(count);
  value(len, size, count);
  vertex(returnX, returnY);

  // VERTEX 4

  count = counter(count);
  value(len, size, count);
  vertex(returnX, returnY);

  //VERTEX 5  

  count = counter(count);
  value(len, size, count);
  vertex(returnX, returnY);
  vertex(topX, topY);

  endShape(CLOSE);
}

void value(float len, float size, int count)
{
  float a = 0;
  float b = 0;
  for (int x = (int)(centerX-len); x <= (centerX+len); x++)
  {
    for (int y = (int)(centerY-len); y <= (centerY+high(len)); y++)
    {
      switch(count)
      {
      case 1:
        a = (int)dist(centerX, centerY, x, y);
        if (x == centerX && y <= centerY && a == size)
        {
          returnX = x;
          returnY = y;
          topX = x;
          topY = y;
        }
        break;
      case 2:
        case2(len, x, y);
        a = (int)dist(topX, topY, x, y);
        b = (int)dist(c, d, x, y);
        if (a == len && b == len && x >= centerX)
        {
          returnX = x;
          returnY = y;
        }
        break;
      case 3:
        case2(len, x, y);
        returnX = c;
        returnY = d;
        break;
      case 4:
        case3(len, x, y);
        returnX = preX;
        returnY = preY;
        break;
      case 5:
        case3(len, x, y);
        a = (int)dist(topX, topY, x, y);
        b = (int)dist(preX, preY, x, y);
        if (a == len && b == len && x <= centerX)
        {
          returnX = x;
          returnY = y;
        }
        break;
      }
    }
  }
}

void case2(float len, float x, float y)
{
  float a = 0;
  float b = 0;

  float total = high(len) + center(len);
  a = (int)dist(topX, topY, x, y);

  if (a == total && x == topX && y >= topY)
  {
    b = (int)len/2;
    c = x+b;
    d = y;
  }
}

void case3(float len, float x, float y)
{
  float a = 0;
  float b = 0;

  float total = high(len) + center(len);
  a = (int)dist(topX, topY, x, y);

  if (a == total && x == topX && y >= topY)
  {
    b = (int)len/2;
    preX = x-b;
    preY = y;
  }
}

float center(float len)
{
  float rad = 0;
  float size = 0;
  rad = -sin(54);
  size = (int)((len/2)*(1 / rad));
  return size;
}

float high(float len)
{
  float h = 0;
  float hyp = center(len);
  float rad = -cos(54);
  h = (int)(hyp*rad);
  return h;
}

int counter(int count)
{
  return ++count;
}
