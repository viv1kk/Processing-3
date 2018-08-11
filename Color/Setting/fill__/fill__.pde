//************************************************* fill() ********************************************//


//Description  

//Sets the color used to fill shapes. 
//For example, if you run fill(204, 102, 0), all subsequent shapes will be filled with orange. 
//This color is either specified in terms of the RGB or HSB color depending on the current colorMode(). 
//The default color space is RGB, with each value in the range from 0 to 255. 

//When using hexadecimal notation to specify a color, use "#" or "0x" before the values (e.g., #CCFFAA or 0xFFCCFFAA). 
//The # syntax uses six digits to specify a color (just as colors are typically specified in HTML and CSS). 
//When using the hexadecimal notation starting with "0x", the hexadecimal value must be specified with eight characters; 
//the first two characters define the alpha component, and the remainder define the red, green, and blue components. 

//The value for the "gray" parameter must be less than or equal to the current maximum value as specified by colorMode(). 
//The default maximum value is 255. 

//To change the color of an image or a texture, use tint().

//Syntax  

//fill(rgb)
//fill(rgb, alpha)
//fill(gray)
//fill(gray, alpha)
//fill(v1, v2, v3)
//fill(v1, v2, v3, alpha)

//Parameters  

//rgb  int: color variable or hex value
//alpha  float: opacity of the fill
//gray  float: number specifying value between white and black
//v1  float: red or hue value (depending on current color mode)
//v2  float: green or saturation value (depending on current color mode)
//v3  float: blue or brightness value (depending on current color mode)

//Returns  

//void

size(750,750);

fill(#f4f4f4);
rect(100,100,100,100);

fill(#F6FF00,100);
rect(250,250,100,100);

fill(127);
rect(400,400,100,100);

fill(160,80);
rect(550,550,100,100);

fill(68,96,250);
rect(550,100,100,100);

fill(73,255,3,127);
rect(100,550,100,100);
