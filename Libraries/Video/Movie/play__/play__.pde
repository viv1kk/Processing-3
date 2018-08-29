//************************************************************ play() ***************************************************//


//Description  

//Plays a movie one time and stops at the last frame.


//Syntax  

//.play()


//Returns  void


import processing.video.*;

Movie mov;
boolean cont = false;

void setup()
{
  size(640, 360);
  mov = new Movie(this, "Moped.webm");
  println("Video plays by triggering mousePressed event...");
}

void mousePressed()
{
  cont = !cont;
  if (cont)
  {
    mov.play();
    println("Video plays now...");
  }
}

void draw()
{
  background(0);
  if (mov.available())
  {
    mov.read();
  }
  image(mov, 0, 0, width, height);
}
