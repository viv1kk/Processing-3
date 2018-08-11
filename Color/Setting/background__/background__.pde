//************************************************* background() ********************************************//


//Description
//The background() function sets the color used for the background of the Processing window.
//The default background is light gray.
//This function is typically used within draw() to clear the display window at the beginning of each frame, but it can be used inside setup() to set the background on the first frame of animation or if the backgound need only be set once. 

//An image can also be used as the background for a sketch, although the image's width and height must match that of the sketch window. 
//Images used with background() will ignore the current tint() setting. To resize an image to the size of the sketch window, use image.
//resize(width, height).

//It is not possible to use the transparency alpha parameter with background colors on the main drawing surface. 
//It can only be used along with a PGraphics object and createGraphics().

//Syntax

//background(rgb)
//background(rgb, alpha)
//background(gray)
//background(gray, alpha)
//background(v1, v2, v3)
//background(v1, v2, v3, alpha)
//background(image)

//Parameters

//rgb  int: any value of the color datatype
//alpha  float: opacity of the background
//gray  float: specifies a value between white and black
//v1  float: red or hue value (depending on the current color mode)
//v2  float: green or saturation value (depending on the current color mode)
//v3  float: blue or brightness value (depending on the current color mode)
//image  PImage: PImage to set as background (must be same size as the sketch window)

//Returns

//void


size(640,480);
background(#742828);
background(160);
background(198,229,144);

//Alpha Parameters haven't been Appliled Yet!!!
