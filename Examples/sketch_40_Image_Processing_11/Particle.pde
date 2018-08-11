class Particle
{

  float x;
  float y;
  float vx;
  float vy;

  Particle()
  {
    x = width/2;
    y = height/2;

    float a = random(TWO_PI); // 360
    float speed = random(1, 2);

    vx = cos(a)*speed;
    vy = sin(a)*speed;
  }

  void display()
  {
    noStroke();
    color c = frog.get((int)x,(int)y);
    fill(c);
    ellipse(x, y, 6,6);
  }

  void move()
  {
    x = x + vx;
    y = y + vy;

    if (y < 0)
    {
      y = height;
    }
    if (y >height)
    {
      y = 0;
    }
    if (x< 0)
    {
      x = width;
    }
    if (x > width)
    {
      x = 0;
    }
  }
}
