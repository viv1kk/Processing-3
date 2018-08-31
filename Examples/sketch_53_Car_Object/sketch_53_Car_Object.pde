Car myCar1;
Car myCar2;

void setup()
{
  size(640, 360);

  myCar1 = new Car(0, 100, 1, 70);
  myCar2 = new Car(0, 260, 2, 100);
}

void draw()
{
  background(255);
  myCar1.display();
  myCar1.move();

  myCar2.display();
  myCar2.move();
}
