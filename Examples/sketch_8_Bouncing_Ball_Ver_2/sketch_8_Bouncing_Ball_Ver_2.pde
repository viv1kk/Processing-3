// Source
// Daiel Shiffman
// The Coding Train
//https://www.youtube.com/watch?v=j_XyeWg_3EE&index=3&list=PLRqwX-V7Uu6ajGB2OI3hl5DZsD1Fw1WzR


float x;
float y;
float speedX;
float speedY;

void setup()
{
  size(640, 360);
  x = 30;
  y = height/4;
  speedX = 2;
  speedY = 2;
}
  

void draw()
{
  
  background(0);
  stroke(0);
  ball();  
  moveBall();
  checkWalls();
  changeColor();
  ground();
}

void ground()
{
  stroke(255);
  strokeWeight(2);
  line(0, height*3/4, width, height*3/4);
}
void ball()
{
  
  ellipse(x, y, 30, 30);
}

void moveBall()
{
  x += speedX;
  y += speedY;
}

void checkWalls()
{
  if(x < 30 || x > width-30)
  {
    speedX *= -1.05;
    //println("x : "+x);
  }
    if (y >= (height*3/4)-15 || y < 15)
  {
    speedY *= -1.018;
    //println("y : "+y);
  }  
}
void changeColor()
{
  if(x < 30 || x > width-30)
  {
    fill(random(255),random(255),random(255));
  }
}
