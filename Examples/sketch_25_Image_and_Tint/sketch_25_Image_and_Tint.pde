//Source
//Daniel Shiffman
//The Coding Train
//https://youtu.be/-f0WEitGmiw

PImage img;

void setup()
{
  size(800, 550);
  img = loadImage("img.jpg");
}

void draw()
{
  background(0);
  image(img, 0, 0, width, height);
  tint(255,128);
}
