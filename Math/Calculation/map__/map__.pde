//************************************************************ map(); **************************************************//


//Examples  

//size(200, 200);
//float value = 25;
//float m = map(value, 0, 100, 0, width);
//ellipse(m, 200, 10, 10);


//float value = 110;
//float m = map(value, 0, 100, -20, -10);
//println(m);  // Prints "-9.0"


//void setup() {
//  size(200, 200);
//  noStroke();
//}

//void draw() {
//  background(204);
//  float  x1 = map(mouseX, 0, width, 50, 150);
//  ellipse(x1, 75, 50, 50);  
//  float x2 = map(mouseX, 0, width, 0, 200);
//  ellipse(x2, 125, 50, 50);  
//}


//Description  

//Re-maps a number from one range to another.

//In the first example above, 

//the number 25 is converted from a value in the range of 0 to 100 into a value that ranges from the left edge of 
//the window (0) to the right edge (width).

//As shown in the second example, numbers outside of the range are not clamped to the minimum and maximum parameters values, 
//because out-of-range values are often intentional and useful.


//Syntax  

//map(value, start1, stop1, start2, stop2);


//Parameters  

//value  float: the incoming value to be converted
//start1  float: lower bound of the value's current range
//stop1  float: upper bound of the value's current range
//start2  float: lower bound of the value's target range
//stop2  float: upper bound of the value's target range


//Returns  float


void setup()
{
  size(600, 600);
}

void draw()
{
  for (int x = 0; x < width; x++)
  {
    for (int y = 0; y < height; y++)
    {
      float fx = map(x, 0, width, 0, 255);
      float fy = map(y, 0, height, 0, 255);

      stroke(color(fx, fy, 255));
      point(x, y);
    }
  }
}
