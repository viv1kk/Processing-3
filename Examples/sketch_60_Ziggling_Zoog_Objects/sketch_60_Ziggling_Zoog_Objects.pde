Zoog[] zoog = new Zoog[20];

void setup()
{
  size(640, 360);

  int x;
  int y;


  for (int i = 0; i < zoog.length; i++)
  {
    x = (int)random(20,width-20);
    y = (int)random(50,height-50);
    zoog[i] = new Zoog(x, y);
  }
}

void draw()
{
  background(255);

  for (int i = 0; i < zoog.length; i++)
  {
    zoog[i].display();
    zoog[i].ziggle();
  }
}

//void mousePressed()
//{
//  int x = (int)random(width);
//  int y = (int)random(height);
//  Zoog z = new Zoog(x, y);

//  zoog = (Zoog[]) append(zoog,z);
//}
