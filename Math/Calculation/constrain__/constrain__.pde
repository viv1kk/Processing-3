//********************************************************* costrain() ****************************************************//


//Description 

//Constrains a value to not exceed a maximum and minimum value.


//Syntax  

//constrain(amt, low, high)


//Parameters  

//amt  int, or float: the value to constrain
//low  int, or float: minimum limit
//high  int, or float: maximum limit


//Returns  float or int


int r = 0;
int g = 0;
int b = 0;

void setup()
{
  size(640, 360);
}

void draw()
{
  background(r, g, b);

  strokeWeight(1);
  stroke(255);

  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);

  if (mouseX > width/2)
  {
    r++;
  } else
  {
    r--;
    g++;
  }
  if (mouseY > height/2)
  {
    b++;
  } else
  {
    b--;
    g--;
  }
  r = constrain(r, 0, 255);
  g = constrain(g, 0, 255);
  b = constrain(b, 0, 255);
}
