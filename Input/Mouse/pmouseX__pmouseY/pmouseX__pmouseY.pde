//************************************************* pmouseX ***************************************************//


//Description  

//The system variable pmouseX always contains the horizontal position of the mouse in the frame previous to the current frame. 
//You may find that pmouseX and pmouseY have different values when referenced inside of draw() and inside of mouse events like mousePressed() and mouseMoved(). 
//Inside draw(), pmouseX and pmouseY update only once per frame (once per trip through the draw() loop). 
//But inside mouse events, they update each time the event is called. If these values weren't updated immediately during mouse events, then the mouse position would be read only once per frame, resulting in slight delays and choppy interaction. 
//If the mouse variables were always updated multiple times per frame, then something like line(pmouseX, pmouseY, mouseX, mouseY) inside draw() would have lots of gaps, because pmouseX may have changed several times in between the calls to line().

//If you want values relative to the previous frame, use pmouseX and pmouseY inside draw(). If you want continuous response, use pmouseX and pmouseY inside the mouse event functions.


//************************************************* pmouseY ***************************************************//


//Description  

//The system variable pmouseY always contains the vertical position of the mouse in the frame previous to the current frame. 
//For more detail on how pmouseY is updated inside of mouse events and draw(), see the reference for pmouseX.


void setup()
{
  size(640,360);
  background(255);
}
void draw()
{
  stroke(0);
  fill(255,112,113);
  line(pmouseX,pmouseY,mouseX,mouseY);
}
