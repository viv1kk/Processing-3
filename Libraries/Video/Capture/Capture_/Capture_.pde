//******************************************************** Capture ****************************************************//


//Description  

//Datatype for storing and manipulating video frames from an attached capture device such as a camera. 
//Use Capture.list() to show the names of any attached devices. 
//Using the version of the constructor without name will attempt to use the last device used by a QuickTime program.


//Methods

//available()  Returns "true" when a new video frame is available to read
//start()  Starts capturing frames from the selected device
//stop()  Stops capturing frames from an attached device
//read()  Reads the current video frame
//list()  Gets a list of all available capture devices such as a camera


//Constructor  

//Capture(parent)
//Capture(parent, requestConfig)
//Capture(parent, requestWidth, requestHeight)
//Capture(parent, requestWidth, requestHeight, frameRate)
//Capture(parent, requestWidth, requestHeight, cameraName)
//Capture(parent, requestWidth, requestHeight, cameraName, frameRate)


//Parameters  

//parent  PApplet: typically use "this"
//requestWidth  int: width of the frame
//requestHeight  int: height of the frame
//frameRate  int: number of frames to read per second
//cameraName  String: name of the camera



import processing.video.*;

Capture cam;

void setup()
{
  size(640, 360);
  cam = new Capture(this, Capture.list()[0]);
  cam.start();
}

void draw()
{
  background(0);
  cam.read();
  image(cam, 0, 0);
}

//Unoptimised Code
