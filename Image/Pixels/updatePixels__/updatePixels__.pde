//**************************************************** updatePixels() ****************************************************//


//Description  

//Updates the display window with the data in the pixels[] array. 
//Use in conjunction with loadPixels(). 
//If you're only reading pixels from the array, there's no need to call updatePixels() — 
//updating is only necessary to apply changes. 

//Certain renderers may or may not seem to require loadPixels() or updatePixels(). 
//However, the rule is that any time you want to manipulate the pixels[] array, you must first call loadPixels(), 
//and after changes have been made, call updatePixels(). 
//Even if the renderer may not seem to use this function in the current Processing release, this will always be subject to change. 

//Currently, while none of the renderers use the additional parameters to updatePixels(), this may be implemented in the future.


//Syntax  

//updatePixels()

//Returns  void



void setup()
{
  size(640, 360);
  background(0);
}
void draw()
{
  loadPixels();
  for (int x = 20; x <= width-20; x++)
  {
    for (int y = 20; y <= height-20; y++)
    {
      int index = x+y*width;
      pixels[index] = color(255,x/2,y/2);
    }
  }
  updatePixels();
}
