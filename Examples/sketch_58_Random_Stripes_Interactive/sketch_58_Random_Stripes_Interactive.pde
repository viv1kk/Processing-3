Stripes[] stripe = new Stripes[20];

void setup()
{
  size(640,360);
  
  for(int i = 0; i < stripe.length; i++)
  {
    stripe[i] = new Stripes();
  }
}

void draw()
{
  background(100);
  
  for(int i = 0; i < stripe.length; i++)
  {
    stripe[i].display();
    stripe[i].move();
    stripe[i].check(mouseX);
  }
}
