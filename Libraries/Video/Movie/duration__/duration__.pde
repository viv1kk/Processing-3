//********************************************************** duration(); ***********************************************;


//Description  

//Returns the length of the movie in seconds. If the movie is 1 minute and 20 seconds long, then 80.0 will be returned. 
//Must be called after play() in order to report accurately.


//Syntax 

//.duration()


//Returns  float


import processing.video.*;

Movie mov;

void setup()
{
  size(640,360);
  mov = new Movie(this, "Moped.webm");
  mov.play();
  println(mov.duration());
}

void movieEvent(Movie mov)
{
  mov.read();
}

void draw()
{
  
  image(mov,0,0,width,height);
}
