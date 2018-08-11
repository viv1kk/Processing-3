// Source
// Daniel Shiffman 
// The Coding Train
// https://youtu.be/Hf-AHwRaodA


Bubble[] b = new Bubble[10];
int a = 0;
void setup()
{
  size(640, 360);

  for (int i = 0; i < b.length; i++)
  {
    int c = (int)random(20, 70);
    int a = (int)random(c/2, width-(c/2));
    int d = (int)random(height/4, height-(c/2));

    b[i] = new Bubble(a, d, c);
  }
}

void draw()
{
  background(0);
  for (int i = 0; i < a; i++)
  {
    b[i].display();
    b[i].ascend();
    b[i].check();
  }
}

void mousePressed()
{
  if (a <b.length)
    ++a;
}

void keyPressed()
{

  if (a>= 1)
    --a;
}
