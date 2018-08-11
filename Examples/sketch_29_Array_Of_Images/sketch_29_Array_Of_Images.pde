PImage[] img = new PImage[5];
Bubble[] b = new Bubble[100];

void setup()
{
  size(640, 360);
  for (int i = 0; i< img.length; i++)
  {
    img[i] = loadImage("bubble"+i+".png");
  }
  for (int j = 0; j< b.length; j++)
  {
    b[j] = new Bubble(int(random(width)), int(random(0.75*height,height)), int(random(20,100)), img[(int)random(img.length)]);
  }
}

void draw()
{
  background(0);
  for(int i = 0; i < b.length; i++)
  {
    b[i].display();
    b[i].ascend();
    b[i].check();
  }
}
