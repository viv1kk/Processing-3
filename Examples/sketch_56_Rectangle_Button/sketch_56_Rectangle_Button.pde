Button b;
int count = 0;
void setup()
{
  size(640, 360);
  b = new Button();
}
boolean mouse = false;

void draw()
{

  background(255);  
  b.display(mouse, count);
}
void mousePressed()
{
  mouse = !mouse;
}
void mouseReleased()
{
  ++count;
} 
