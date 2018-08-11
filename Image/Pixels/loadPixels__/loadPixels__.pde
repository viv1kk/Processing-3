//************************************************ loadPixels(); *************************************************//


//Description  

//Loads a snapshot of the current display window into the pixels[] array. 
//This function must always be called before reading from or writing to pixels[]. 
//Subsequent changes to the display window will not be reflected in pixels until loadPixels() is called again.

//Certain renderers may or may not seem to require loadPixels() or updatePixels(). 
//However, the rule is that any time you want to manipulate the pixels[] array, you must have previously called loadPixels(), 
//and after changes have been made, call updatePixels(). 
//Even if the renderer may not seem to use this function in the current Processing release, this will always be subject to change.

//Syntax  

//loadPixels()

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
    for (int y = 20; y<= height-20; y++)
    {
      pixels[x+y*width] = color(x/2,255,y/2);
    }
  }
  updatePixels();
}
