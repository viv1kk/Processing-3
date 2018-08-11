// PENTAGON WITH SIDE OF 48px ON MOUSE CLICK EVENT


void setup()
{
  size(640, 360);
  background(0);
}

void draw()
{

  stroke(255);
  strokeWeight(2);
}

void mousePressed()
{
  pentagon(mouseX,mouseY);
}

void pentagon(int x, int y)
{
 // CENTER
 
 point(x,y);
 noFill();
 beginShape();
 // VERTEX 1
 
 vertex(x,y-48);
 
 // VERTEX 2
 
 vertex(x+46,y-15);
 
 // VERTEX 3
 
 vertex(x+28,y+40);
 
 // VERTEX 4
 
 vertex(x-28,y+40);
 
 // VERTEX 5
 
 vertex(x-46,y-15);

  endShape(CLOSE);
}
