int[] num;
float[] size;
color[] colour;
int[] x;
int[] y;

void setup()
{
  size(800,600);

  num = new int[25];
  size = new float[num.length];
  colour = new color[num.length];
  x = new int[num.length];
  y = new int[num.length];

  for (int i = 0; i < num.length; i++)
  {
    size[i] = random(15.0, width/2);
    colour[i] = color(random(255), random(255), random(255), random(20, 127));
    x[i] = (int)random(width-size[i]/2);
    y[i] = (int)random(height-size[i]/2);
  }

  //for (int i = 0; i < num.length; i++)
  //{
  //  for (int j = 0; j < num.length-i-1; j++)
  //  {
  //    float a = size[j];
  //    float b = size[j+1];
  //    if (a > b)
  //    {
  //      x[j] = x[j+1];
  //      y[j] = y[j+1];
  //      swap(size, j, j+1);
  //    }
  //  }
  //}
}


int i = 0;
int j = 0;

void draw()
{
  background(255);

  if (mousePressed)
  {
    for (int k = 0; k < 1; k++)
    {
      float a = size[j];
      float b = size[j+1];
      if (a < b)
      {

        swap(size, j, j+1);
      }
      if (i < num.length)
      {
        j = j + 1;
        x[i] = width/2;
        y[i] = height/2;
        if (j >= num.length-i-1)
        {
          j = 0;
          i = i+1;
        }
      } else
      {
        noLoop();
        //println("Finished Sorting");
      }
    }
  }

  for (int i = 0; i < num.length; i++)
  {
    fill(colour[i]);
    strokeWeight(1);
    ellipse(x[i], y[i], size[i], size[i]);
  }
}

void swap(float[] arr, int a, int b)
{
  float temp = arr[a];
  arr[a] = arr[b];
  arr[b] = temp;
}
