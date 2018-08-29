//************************************************************ speed(); ************************************************//


//Description  

//Sets the relative playback speed of the movie. 
//The rate parameters sets the speed where 2.0 will play the movie twice as fast, 0.5 will play at half the speed, 
//and -1 will play the movie in normal speed in reverse. (Note that not all video formats support backwards playback.
//For example, the theora codec does support backward playback, but not so the H264 codec, at least in its current version.)


//Syntax

//.speed(irate)


//Parameters  

//irate  float: speed multiplier for movie playback


//Returns  void


import processing.video.*;

Movie mov;

void setup()
{
  size(640, 360, P2D);
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
  background(0);
  float map = map(mouseX,0,width,0.25,2.0);
  mov.speed(map);
  image(mov, 0, 0, width, height);
}
