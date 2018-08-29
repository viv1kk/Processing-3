//*********************************************************** noLoop(); ***********************************************//


//Description  

//If a movie is looping, calling noLoop() will cause it to play until the end and then stop on the last frame.


//Syntax  

//.noLoop()


//Returns  void


import processing.video.*;

Movie mov;

void setup()
{
  size(640, 360);
  mov = new Movie(this, "Moped.webm");
  mov.loop();
}

void mousePressed()
{
  mov.noLoop();
}

void movieEvent(Movie mov)
{
  mov.read();
}

void draw()
{
  background(0);
  image(mov, 0, 0, width, height);
}
