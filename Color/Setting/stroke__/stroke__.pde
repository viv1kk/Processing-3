//************************************************* stroke() ********************************************//


//Description  

//Sets the color used to draw lines and borders around shapes. 
//This color is either specified in terms of the RGB or HSB color depending on the current colorMode(). 
//The default color space is RGB, with each value in the range from 0 to 255. 

//When using hexadecimal notation to specify a color, use "#" o7r "0x" before the values (e.g., #CCFFAA or 0xFFCCFFAA).
//The # syntax uses six digits to specify a color (just as colors are typically specified in HTML and CSS). 
//When using the hexadecimal notation starting with "0x", the hexadecimal value must be specified with eight characters; 
//the first two characters define the alpha component, and the remainder define the red, green, and blue components. 

//The value for the gray parameter must be less than or equal to the current maximum value as specified by colorMode(). 
//The default maximum value is 255. 

//When drawing in 2D with the default renderer, you may need hint(ENABLE_STROKE_PURE) to improve drawing quality (at the expense of performance). 
//See the hint() documentation for more details.

//Syntax  

//stroke(rgb)
//stroke(rgb, alpha)
//stroke(gray)
//stroke(gray, alpha)
//stroke(v1, v2, v3)
//stroke(v1, v2, v3, alpha)

//Parameters  

//rgb  int: color value in hexadecimal notation
//alpha  float: opacity of the stroke
//gray  float: specifies a value between white and black
//v1  float: red or hue value (depending on current color mode)
//v2  float: green or saturation value (depending on current color mode)
//v3  float: blue or brightness value (depending on current color mode)

//Returns  

//void

size(750,750);

stroke(#fff654);
rect(100,100,100,100);

stroke(#562EC6,127);
rect(250,250,100,100);

stroke(0);
rect(400,400,100,100);

stroke(50,127);
rect(550,550,100,100);

stroke(75,255,172);
rect(100,550,100,100);

stroke(255,70,150,180);
rect(550,100,100,100);
