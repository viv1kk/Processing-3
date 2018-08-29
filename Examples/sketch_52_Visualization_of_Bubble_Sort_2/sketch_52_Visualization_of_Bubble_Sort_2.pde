float[] size;

void setup()
{
  size(640, 360);

  size = new float[width];

  for (int i = 0; i < size.length; i++)
  {
    size[i] = random(height);
  }
}

int i = 0;
int j = 0;

void draw()
{
  background(0);

  if (mousePressed)
  {
    float map = map(mouseX, 0, width, 0, 300);

    for (int k = 0; k < map; k++)
    {

      float a = size[j];
      float b = size[j + 1];
      if (a < b)
      {
        swap(size, j, j+1);
      }

      if (i < size.length)
      {
        j = j + 1;
        if (j >= size.length-i-1)
        {
          j = 0;
          i = i + 1;
        }
      } else
      {
        noLoop();
      }
    }
  }

  for (int l = 0; l < size.length; l++)
  {
    lines(l, i, j);
  }
}

void swap(float[] arr, int a, int b)
{
  float temp = arr[a];
  arr[a] = arr[b];
  arr[b] = temp;
}

void lines(int l, int i, int j)
{

  line(l, height, l, size[l]);
  if (l <= width-i)
  {
    stroke(255);
  }
  if (l == j)
  {
    stroke(255, 0, 0);
  }
  if (l == width-i)
  {
    stroke(random(255),random(255),random(255));
  }
  if (l > width-i)
  {
    stroke(abs(l-i), j, l%i);
  }
}
