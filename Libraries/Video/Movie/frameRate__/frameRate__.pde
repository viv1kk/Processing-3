//********************************************************* frameRate(); ************************************************//


//Description 

//Sets how often frames are read from the movie. 
//Setting the fps parameter to 4, for example, will cause 4 frames to be read per second.


//Syntax  

//.frameRate(ifps)


//Parameters  

//ifps  float: speed of the movie in frames per second


//Returns  void


import processing.video.*;

Movie mov;

void setup()
{
  size(640, 360);
  frameRate(24);
  mov = new Movie(this, "Moped.webm");
  mov.loop();
}

void movieEvent(Movie mov)
{
  mov.read();
}

void draw()
{
  image(mov, 0, 0, width, height);
}
