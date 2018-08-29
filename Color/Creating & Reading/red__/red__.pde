//****************************************************** red() ***************************************************//


//Description  

//Extracts the red value from a color, scaled to match current colorMode(). 
//The value is always returned as a float, so be careful not to assign it to an int value.

//The red() function is easy to use and understand, but it is slower than a technique called bit shifting. 
//When working in colorMode(RGB, 255), you can acheive the same results as red()
//but with greater speed by using the right shift operator (>>) with a bit mask.
//For example, the following two lines of code are equivalent means of getting the red value of the color value c:

//float r1 = red(c);  // Simpler, but slower to calculate
//float r2 = c >> 16 & 0xFF;  // Very fast to calculate


//Syntax  

//red(rgb)


//Parameters  

//rgb  int: any value of the color datatype


//Returns  float



PImage frog;

void setup()
{
  size(858, 536);
  frog = loadImage("frog.jpg");
}

void draw()
{
  loadPixels();
  frog.loadPixels();
  for (int x = 0; x < frog.width; x++)
  {
    for (int y = 0; y < frog.height; y++)
    {
      float r = red(frog.pixels[x+y*frog.width]);
      pixels[x+y*frog.width] = color(r,0,0);
    }
  }  
  updatePixels();
}
