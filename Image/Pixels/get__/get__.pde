PImage img;

void setup()
{
  size(800, 600);
  img = loadImage("img.jpg");
  background(0);
}

void draw()
{
  image(img, 0, 0, width, height-50);
  color c = get(mouseX,mouseY);
  fill(c);
  noStroke();
  rectMode(CENTER);
  rect(width/2,height-25,width,50);
}
