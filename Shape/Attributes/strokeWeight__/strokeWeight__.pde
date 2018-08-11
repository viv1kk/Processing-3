//******************************************** strokeWeight() *************************************************//


//Description

//Sets the width of the stroke used for lines, points, and the border around shapes. 
//All widths are set in units of pixels.

//Syntax

//strokeWeight(weight)

//Parameters

//weight  float: the weight (in pixels) of the stroke

//Returns

//void


void setup()
{
  size(640,360);
}

void draw()
{
  background(255);
  stroke(0);
  strokeWeight(1);
  line(100,90,540,90);
  strokeWeight(4);
  line(100,180,540,180);
  strokeWeight(10);
  line(100,270,540,270);
}
