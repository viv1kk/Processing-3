class Car
{
  int x;
  int y;
  int speed;
  int carSize;

  Car(int posX, int posY, int spd, int size)
  {
    x = posX;
    y = posY;
    speed = spd;
    carSize = size;
  }

  void display()
  {
    stroke(255);
    //noStroke();
    float map = map(x,0,width,0,255);
    fill(map,carSize,y);
    rect(x, y, carSize, carSize/2);
    
    rect(x+carSize/6,y-carSize/6,carSize/4,carSize/6);
    rect(x+3.5*carSize/6,y-carSize/6,carSize/4,carSize/6);
    rect(x+carSize/6,y+3*carSize/6,carSize/4,carSize/6);
    rect(x+3.5*carSize/6,y+3*carSize/6,carSize/4,carSize/6);
  }
  void move()
  {
    if (x < width)
    {
      x = x+speed;
    } else
    {
      x = -carSize;
    }
  }
}
