//********************************************************* stop() *******************************************************//


//Description  

//Stops a movie from continuing. The playback returns to the beginning so when a movie is played, it will begin from the beginning.

//Syntax  

//.stop()


//Returns  void


import processing.video.*;

Movie mov;

void setup()
{
  size(640, 360);
  mov = new  Movie(this, "Moped.webm");
}

void mousePressed()
{
  mov.play();
  println("Video plays now...");
}

void movieEvent(Movie mov)
{
  mov.read();
}

void keyPressed()
{
  mov.stop();
  println("Video stops now and jumps to the beginning of the video...");
}

void draw()
{
  background(0);
  image(mov, 0, 0, width, height);
}
