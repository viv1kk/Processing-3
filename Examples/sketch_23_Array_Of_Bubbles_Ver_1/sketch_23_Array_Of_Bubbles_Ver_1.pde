Bubble[] b;
int v;
void setup()
{
  int a = 100;
  size(640, 360, P2D);
  b = new Bubble[a];

  for (int i = 0; i < a; i++)
  {
    b[i] = new Bubble((int)random(width), (int)random(height-150, height), (int)random(20, 50));
  }
  v = a;
}

void draw()
{
  background(0);

  for (int i = 0; i < v; i++)
  {
    b[i].display();
    b[i].ascend();
    b[i].check();
  }
}
