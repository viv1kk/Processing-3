//*************************************************** color() **********************************************//


//Description 
//Creates colors for storing in variables of the color datatype. 
//The parameters are interpreted as RGB or HSB values depending on the current colorMode(). 
//The default mode is RGB values from 0 to 255 and, therefore, color(255, 204, 0) will return a bright yellow color.

//Note that if only one value is provided to color(), it will be interpreted as a grayscale value. Add a second value, 
//and it will be used for alpha transparency. When three values are specified, they are interpreted as either RGB or HSB values. 
//Adding a fourth value applies alpha transparency.

//Note that when using hexadecimal notation, it is not necessary to use color(), as in: color c = #006699

//More about how colors are stored can be found in the reference for the color datatype.


//Syntax  

//color(gray)
//color(gray, alpha)
//color(v1, v2, v3)
//color(v1, v2, v3, alpha)


//Parameters  

//gray  int: number specifying value between white and black
//alpha  float, or int: relative to current color range
//v1  float, or int: red or hue values relative to the current color range
//v2  float, or int: green or saturation values relative to the current color range
//v3  float, or int: blue or brightness values relative to the current color range


//Returns  int



void setup()
{
  size(640,360);
}

void draw()
{
  background(#f4f4f4);
  
  color c = color(255,0,255,127);
  fill(c);
  noStroke();
  ellipse(width/2, height/2, 200,200);
}
