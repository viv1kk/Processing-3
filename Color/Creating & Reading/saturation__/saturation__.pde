//********************************************************* saturation() ****************************************************//


//Description  

//Extracts the saturation value from a color.


//Syntax  

//saturation(rgb)


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
      float s = saturation(frog.pixels[x+y*frog.width]);
      colorMode(HSB);
      pixels[x+y*frog.width] = color(s%10, s,s*2);
    }
  }  
  updatePixels();
}
