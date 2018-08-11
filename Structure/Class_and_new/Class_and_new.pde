//******************************************** new *************************************************//

//Description

//Creates a "new" object.
//The keyword new is typically used similarly to the applications in the above example.
//In this example, a new object "h1" of the datatype "HLine" is created.
//On the following line, a new array of floats called "speeds" is created.

Ball b;

void setup()
{
  size(640,360);
  b = new Ball();
}

void draw()
{
  background(0);
  
  b.display();
  b.update();
  b.check();
}

void mousePressed()
{
 b.pop();
}
