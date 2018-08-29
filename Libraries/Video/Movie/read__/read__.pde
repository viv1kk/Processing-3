//******************************************************* read() ***************************************************//


//Description  

//Reads the current frame of the movie.


//Syntax  

//.read()


//Returns  void


import processing.video.*;

Movie mov;
boolean cont = true;

void setup()
{
  size(640, 360);
  mov = new Movie(this, "Moped.webm");
  mov.play();
}

void mousePressed()
{
  cont = !cont;
  if (!cont)
  {
    println("Not reading the new frame but the video is playing in the background..\n");
  } else
  {
    println("reading the new frame..\n");
  }
}

void draw()
{
  if (cont && mov.available())
  {
    mov.read();
  }
  image(mov, 0, 0, width, height);
}
