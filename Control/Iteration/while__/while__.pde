//************************************************* while() ********************************************//

//Description

//Controls a sequence of repetitions. 
//The while structure executes a series of statements continuously while the expression is true. 
//The expression must be updated during the repetitions or the program will never "break out" of while. 

//This function can be dangerous because the code inside the while loop will not finish until the expression inside while becomes false. 
//It will lock out all other code from running (e.g., mouse and keyboard events will not be updated). 
//Be careful — if used incorrectly, this can lock up your code (and sometimes even the Processing environment itself).

//Syntax

//while (expression) {
//  statements
//}

//Parameters

//expression  a valid expression
//statements  one or more statements

float x;
float y;
float spacing;

void setup()
{
  size(640, 360);
}

void draw()
{
  x = 0;
  y = 0;
  spacing = 40;
  background(0);
  stroke(255);
  strokeWeight(2);
  while (x < width || y < height)
  {
    x += spacing;
    line(x, 0, x, height);
    y += spacing;
    line(0,y,width,y);
  }
}
