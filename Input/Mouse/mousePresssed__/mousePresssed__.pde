//************************************************* mousePressed() ***************************************************//


//Description

//The mousePressed() function is called once after every time a mouse button is pressed. 
//The mouseButton variable (see the related reference entry) can be used to determine which button has been pressed. 
//Mouse and keyboard events only work when a program has draw(). 
//Without draw(), the code is only run once and then stops listening for events.

//Syntax  

//mousePressed()
//mousePressed(event)

//Returns  void

void setup()
{
  size(640,360);
  background(255);
}
void draw()
{
  stroke(0);
  strokeWeight(3);
  line(pmouseX,pmouseY,mouseX,mouseY);
}

void mousePressed()
{
  background(255);
}
