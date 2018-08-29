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

    float speed = random(1, 5);
    float angle = random(TWO_PI);

    vx = cos(angle)*speed;
    vy = sin(angle)*speed;
  }

  void display()
  {
    float r = red(cam.get((int)x, (int)y));
    float g = green(cam.get((int)x, (int)y));
    float b = blue(cam.get((int)x, (int)y));

    fill(r,g,b);
    noStroke();
    ellipse(x, y, 5, 5);
  }

  void move()
  {
    x = x + vx;
    y = y + vy;

    if (x < 0)
    {
      x = width;
    }
    if (x > width)
    {
      x = 0;
    }

    if (y < 0)
    {
      y = height;
    }
    if (y > height)
    {
      y = 0;
    }
  }
}
