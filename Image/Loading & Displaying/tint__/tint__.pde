////**************************************************** tint() ************************************************//



//Description

//Sets the fill value for displaying images.
//Images can be tinted to specified colors or made transparent by including an alpha value.

//To apply transparency to an image without affecting its color, use white as the tint color and specify an alpha value.
//For instance, tint(255, 128) will make an image 50% transparent
//(assuming the default alpha range of 0-255, which can be changed with colorMode()). 

//When using hexadecimal notation to specify a color, use "#" or "0x" before the values (e.g., #CCFFAA or 0xFFCCFFAA).
//The # syntax uses six digits to specify a color (just as colors are typically specified in HTML and CSS).
//When using the hexadecimal notation starting with "0x", the hexadecimal value must be specified with eight characters; 
//the first two characters define the alpha component, and the remainder define the red, green, and blue components. 

//The value for the gray parameter must be less than or equal to the current maximum value as specified by colorMode().
//The default maximum value is 255. 

//The tint() function is also used to control the coloring of textures in 3D.


//Syntax  

//tint(rgb)
//tint(rgb, alpha)
//tint(gray)
//tint(gray, alpha)
//tint(v1, v2, v3)
//tint(v1, v2, v3, alpha)


//Parameters  

//rgb  int: color value in hexadecimal notation
//alpha  float: opacity of the image
//gray  float: specifies a value between white and black
//v1  float: red or hue value (depending on current color mode)
//v2  float: green or saturation value (depending on current color mode)
//v3  float: blue or brightness value (depending on current color mode)


//Returns  void


float a;
PImage img;

void setup()
{
  size(800,550);
  img = loadImage("img.jpg");
  a = 255.0/width;
  println(a);
}

void draw()
{
  background(0);
  image(img,0,0,width,height);
  tint(255,(a*mouseX));
}
