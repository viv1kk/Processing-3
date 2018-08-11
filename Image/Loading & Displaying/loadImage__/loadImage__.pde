//************************************************** loadImage() ***************************************************//


//Description

//Loads an image into a variable of type PImage.Four types of images ( .gif, .jpg, .tga, .png) images may be loaded.
//To load correctly, images must be located in the data directory of the current sketch.

//In most cases, load all images in setup() to preload them at the start of the program.
//Loading images inside draw() will reduce the speed of a program.
//Images cannot be loaded outside setup() unless they're inside a function that's called after setup() has already run.

//Alternatively, the file maybe be loaded from anywhere on the local computer using an absolute path
//(something that starts with / on Unix and Linux, or a drive letter on Windows),
//or the filename parameter can be a URL for a file found on a network.

//If the file is not available or an error occurs, null will be returned and an error message will be printed to the console.
//The error message does not halt the program,
//however the null value may cause a NullPointerException if your code does not check whether the value returned is null.

//The extension parameter is used to determine the image type in cases where the image filename does not end with a proper extension.
//Specify the extension as the second parameter to loadImage(), as shown in the third example on this page.
//Note that CMYK images are not supported.

//Depending on the type of error, a PImage object may still be returned, but the width and height of the image will be set to -1.
//This happens if bad image data is returned or cannot be decoded properly.
//Sometimes this happens with image URLs that produce a 403 error or that redirect to a password prompt,
//because loadImage() will attempt to interpret the HTML as image data.


//Syntax  

//loadImage(filename)
//loadImage(filename, extension)


//Parameters  

//filename  String:  name of file to load, can be .gif, .jpg, .tga, or a handful of other image types depending on your platform
//extension  String: type of image to load, for example "png", "gif", "jpg"

//Returns  PImage


PImage img;
void setup()
{
  size(800,600);
  img = loadImage("img.jpg");
}

void draw()
{
  background(0);
  image(img,0,0,800,600);
}
