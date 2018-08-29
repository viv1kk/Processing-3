class Particle
{
  float x;
  float y;
  float vx;
  float vy;
  int camScale;

  Particle(int scale)
  {
    x = width/2;
    y = height/2;

    float angle = random(TWO_PI);
    float speed = random(1, 5);

    vx = cos(angle)*speed;
    vy = sin(angle)*speed;
    camScale = scale;
  }

  void display()
  {
    color c = cam.get((int)x/camScale, (int)y/camScale); 
    fill(c);
    noStroke();
    ellipse(x, y, 5, 5);
  }
  void move()
  {
    x = x + vx;
    y = y + vy;
    
    if(x < 0)
    {
      x = width;
    }
    if(x > width)
    {
      x = 0;
    }
    
    if(y < 0)
    {
      y = height;
    }
    if(y > height)
    {
      y = 0;
    }   
  }
}
