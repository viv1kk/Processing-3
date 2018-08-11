//************************************************* mouseX ***************************************************//


//Description  

//The system variable mouseX always contains the current horizontal coordinate of the mouse. 
//Note that Processing can only track the mouse position when the pointer is over the current window. 
//The default value of mouseX is 0, so 0 will be returned until the mouse moves in front of the sketch window. 
//(This typically happens when a sketch is first run.) 
//Once the mouse moves away from the window, mouseX will continue to report its most recent position.


//************************************************* mouseY ***************************************************//


//Description  

//The system variable mouseY always contains the current vertical coordinate of the mouse. 
//Note that Processing can only track the mouse position when the pointer is over the current window. 
//The default value of mouseY is 0, so 0 will be returned until the mouse moves in front of the sketch window. 
//(This typically happens when a sketch is first run.) 
//Once the mouse moves away from the window, mouseY will continue to report its most recent position.


void setup()
{
  size(640, 360);
  
}

void draw()
{
  background(255);
  stroke(255);
  fill(225,127,170);
  rectMode(CENTER);
  rect(mouseX,mouseY,100,100);
}
