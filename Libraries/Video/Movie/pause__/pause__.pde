//********************************************************** pause() **************************************************//


//Description  

//Pauses a movie during playback. If a movie is started again with play(), it will continue from where it was paused.


//Syntax  

//.pause()


//Returns  void


import processing.video.*;

Movie mov;
boolean cont = true;

void setup()
{
  size(640, 360);
  mov = new Movie(this, "Moped.webm");
}

void mousePressed()
{
  if (cont)
  {
    println("Video Plays now...");
    mov.play();
  } else
  {
    println("Video Pause now...");
    mov.pause();
  }
  cont = !cont;
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
