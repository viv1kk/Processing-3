//println();

//Description

//The println() function writes to the console area, the black rectangle at the bottom of the Processing environment. 
//This function is often helpful for looking at the data a program is producing. 
//Each call to this function creates a new line of output. 
//More than one parameter can be passed into the function by separating them with commas. 
//Alternatively, individual elements can be separated with quotes ("") and joined with the addition operator (+).

//Before Processing 2.1, println() was used to write array data to the console. 
//Now, use printArray() to write array data to the console.

//Note that the console is relatively slow. 
//It works well for occasional messages, but does not support high-speed, real-time output (such as at 60 frames per second). 
//It should also be noted, that a println() within a for loop can sometimes lock up the program, and cause the sketch to freeze.

//Syntax  

//println()
//println(what)
//println(variables)

//Parameters 

//what  Object, String, float, char, boolean, or byte: data to print to console
//variables  Object[]: list of data, separated by commas

//Returns  void

float circleX;
float circleY;

void setup()
{
  size(640,360);
}

void draw()
{
  background(0);
  circleX = random(width);
  circleY = random(height);
  fill(255);
  ellipse(circleX,circleY,25+random(-5,5),25+random(-5,5));
  println("CircleX : "+circleX,"\n","CircleY : "+circleY);
}
