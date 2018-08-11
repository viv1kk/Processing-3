//******************************************** rectMode() *************************************************//


//Description  

//Modifies the location from which rectangles are drawn by changing the way in which parameters given to rect() are intepreted.

//The default mode is rectMode(CORNER), 
//which interprets the first two parameters of rect() as the upper-left corner of the shape, 
//while the third and fourth parameters are its width and height.

//rectMode(CORNERS) interprets the first two parameters of rect() as the location of one corner, 
//and the third and fourth parameters as the location of the opposite corner.

//rectMode(CENTER) interprets the first two parameters of rect() as the shape's center point, 
//while the third and fourth parameters are its width and height.

//rectMode(RADIUS) also uses the first two parameters of rect() as the shape's center point, 
//but uses the third and fourth parameters to specify half of the shapes's width and height.

//The parameter must be written in ALL CAPS because Processing is a case-sensitive language.

//Syntax  

//rectMode(mode)

//Parameters  

//mode  int: either CORNER, CORNERS, CENTER, or RADIUS

//Returns  

//void


size(750,750);

rectMode(CORNER);
stroke(255);
fill(147,255,191,127);
rect(100,100,100,100);

rectMode(CORNERS);
stroke(0);
fill(67,255,44,90);
rect(250,250,350,350);

rectMode(CENTER);
stroke(127);
fill(64,44,255,50);
rect(460,460,100,100);

rectMode(RADIUS);
stroke(190);
fill(255,255,0);
rect(620,620,50,50);
