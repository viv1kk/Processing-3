//********************************************************** Movie *************************************************//


//Description  

//Datatype for storing and playing movies. 
//Movies must be located in the sketch's data folder or an accessible place on the network to load without an error.


//Methods  

//frameRate()  Sets the target frame rate
//speed()  Sets the relative playback speed
//duration()  Returns length of movie in seconds
//time()  Returns location of playback head in units of seconds
//jump()  Jumps to a specific location
//available()  Returns "true" when a new movie frame is available to read.
//play()  Plays movie one time and stops at the last frame
//loop()  Plays a movie continuously, restarting it when it's over.
//noLoop()  Stops the movie from looping
//pause()  Pauses the movie
//stop()  Stops the movie
//read()  Reads the current frame


//Constructor  

//Movie(parent, filename)


//Parameters  

//parent  PApplet: PApplet
//filename  String: String


import processing.video.*;

Movie mov;
boolean cont = true;

void setup()
{
  size(640,360);
  mov = new Movie(this, "Moped.webm");
  mov.play();
}

void draw()
{
  mov.read();    // Possible Video Jitter
  image(mov, 0, 0, width, height);
}
