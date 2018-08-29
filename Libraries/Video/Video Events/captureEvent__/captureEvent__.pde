//**************************************************** captureEvent() ***********************************************//


//Description 

//This event function is run when a new camera frame is available. Use the read() method to capture this frame. 
//If there is more than one capture device in the program, 
//captureEvent() is called each time any of the devices has a new frame available. 
//Use an if within the function to determine which device is triggering the event. 

//This function is for people who want to process the image data separately from drawing (and as quickly as possible.) 
//You cannot draw to the screen inside the captureEvent() function. 
//If you want to draw immediately based on the new image, then use the Capture.available() method.


//Syntax  

//void captureEvent(Capture which) {
//  statements
//}


//Parameters  

//statements  any valid statements
//which  the camera with the event



import processing.video.*;

Capture cam;

void setup()
{
  size(640, 360);
  cam = new Capture(this, Capture.list()[0]);
  cam.start();
}

void captureEvent(Capture cam)
{
  cam.read();
}

void draw()
{
  background(0);
  image(cam, 0, 0);
}
