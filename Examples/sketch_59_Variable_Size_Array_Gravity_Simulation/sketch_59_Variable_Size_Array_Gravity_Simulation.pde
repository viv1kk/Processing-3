Ball[] ball = new Ball[1];

void setup()
{
  size(640,360);
  
  ball[0] = new Ball(300,150);
}

void draw()
{
  background(255);
  for(int i = 0; i < ball.length; i++)
  {
    ball[i].display();
    ball[i].move();
    ball[i].gravity();
  }
}

void mousePressed()
{
  Ball b = new Ball(mouseX,mouseY);
  ball = (Ball[]) append(ball,b);
}
