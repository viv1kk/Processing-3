// Source
// Daniel Shiffman
// The Coding Train
// https://www.youtube.com/watch?v=mVq7Ms01RjA&index=2&list=PLRqwX-V7Uu6YqykuLs00261JCqnL_NNZ_

void setup()
{
  size(640, 360);
  //background(0);
}

void draw()
{
  background(0);
  fill(0);
  if (mouseX < width/2 && mouseY < height/2)
  {
    fill(255, 0, 0);
    rect(0, 0, (width/2), (height/2));
  } else if (mouseX > width/2 && mouseY < height/2)
  {
    fill(0, 255, 0);
    rect(width/2, 0, (width/2), (height/2));
  } else if (mouseX < width/2 && mouseY > height/2)
  {
    fill(0, 0, 255);
    rect(0, (height/2), (width/2), height);
  } else {
    fill(255, 255, 0);
    rect((width/2), (height/2), width, height);
  }
}
