//************************************************************ time() **********************************************//


//Description  

//Returns the location of the playback head in seconds. 
//For example, if the movie has been playing for 4 seconds, the number 4.0 will be returned.


//Syntax  

//.time()


//Returns  float


import processing.video.*;

Movie mov;

void setup()
{
  size(640, 360);
  mov = new Movie(this, "Moped.webm");
  mov.play();
}

void movieEvent(Movie mov)
{
  mov.read();
  println(mov.time());
}

void draw()
{ 
  background(0);
  image(mov, 0, 0, width, height);
}
