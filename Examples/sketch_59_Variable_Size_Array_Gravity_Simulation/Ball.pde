class Ball
{
  float x;
  float y;
  float speed;
  float gravity;
  float r;
  float g;
  float b;

  Ball(float a, float b)
  {
    x = a;
    y = b;
    speed = 0.0;
    gravity = 0.25;
    r = random(255);
    g = random(255);
    b = random(255);
  }

  void display()
  {
    noStroke();
    float mapX = map(x, 0, width, 0, 255);
    float mapY = map(x, 0, height, 0, 255);
    fill(abs(r-mapY), abs(g-mapX), abs(b-mapY));
    ellipse(x, y, 30, 30);
  }

  void move()
  {
    y = y + speed;

    if (y >= height-15)
    {
      speed = speed * -0.95;
      y = height-15;
    }
  }

  void gravity()
  {
    speed = speed + gravity;
  }
}
