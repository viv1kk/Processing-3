//********************************************************** pixels[] *************************************************//


//Description  

//Array containing the values for all the pixels in the display window. 
//These values are of the color datatype. This array is the size of the display window. 
//For example, if the image is 100x100 pixels, there will be 10000 values and if the window is 200x300 pixels, 
//there will be 60000 values.

//Before accessing this array, the data must loaded with the loadPixels() function. 
//Failure to do so may result in a NullPointerException. 
//Subsequent changes to the display window will not be reflected in pixels until loadPixels() is called again. 
//After pixels has been modified, the updatePixels() function must be run to update the content of the display window.


void setup()
{
  size(640, 360);
  background(0);
}

void draw()
{
  loadPixels();

  for (int i = 0; i <pixels.length; i++)
  {
    pixels[i] = color(255, 0, 0);
    if (i >pixels.length/2)
      pixels[i] = color(0, 255, 0);
  }
  updatePixels();
}
