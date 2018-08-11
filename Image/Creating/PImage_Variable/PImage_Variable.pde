//********************************************************* PImage **************************************************//


//Description

//datatype for storing images. Processing can display .gif, .jpg, .tga, and .png images.Images may be displayed in 2D and 3D space.
//Before an image is used, it must be loaded with the loadImage() function.
//The PImage class contains fields for the width and height of the image,
//as well as an array called pixels[] that contains the values for every pixel in the image.

//The methods described below allow easy access to the image's pixels and alpha channel and simplify the process of compositing.

//Before using the pixels[] array, be sure to use the loadPixels() method on the image to make sure that the pixel data is properly loaded.

//To create a new image, use the createImage() function.
//Do not use the syntax new PImage().


//Fields  

// pixels[]  Array containing the color of every pixel in the image
// width     Image width
// height    Image height


//Methods

// loadPixels()    Loads the pixel data for the image into its pixels[] array
// updatePixels()  Updates the image with the data in its pixels[] array
// resize()        Changes the size of an image to a new width and height
// get()           Reads the color of any pixel or grabs a rectangle of pixels
// set()           writes a color to any pixel or writes an image into another
// mask()          Masks part of an image with another image as an alpha channel
// filter()        Converts the image to grayscale or black and white
// copy()          Copies the entire image
// blend()         Copies a pixel or rectangle of pixels using different blending modes
// save()          Saves the image to a TIFF, TARGA, PNG, or JPEG file


//Constructor  

// PImage(width, height, format, factor)


PImage img;

void setup()
{
  size(800,550);
  img = loadImage("img.jpg");
}

void draw()
{
  background(0);
  image(img,0,0,800,550);
}
