//********************************************************* alpha() ****************************************************//


//Description  

//Extracts the alpha value from a color.


//Syntax  

//alpha(rgb)


//Parameters  

//rgb  int: any value of the color datatype


//Returns  float

PImage img = createImage(200, 200, ARGB);
void setup()
{
  size(700, 400);

  loadPixels();
  img.loadPixels();

  for (int x = 0; x <img.width; x++)
  {
    for (int y = 0; y <img.height; y++)
    {
      img.pixels[x+y*img.width] = color(x, 0, y, abs(x+y));
    }
  }
  updatePixels();
}

void draw()
{
  background(0);


  image(img, 100, 100);
  if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300)
  {
    float c = 0;
    c = alpha(img.pixels[mouseX-100+(mouseY-100)*img.width]);
    fill(mouseX-100, mouseY-100, 0, c);
  }
  rect(400, 100, img.width, img.height);
}
