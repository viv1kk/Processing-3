//********************************************************** available(); *************************************************//


//Description 

//Returns "true" when a new movie frame is available to read.


//Syntax  

//.available()


//Returns  boolean


import processing.video.*;

Movie mov;

void setup()
{
  size(640, 360);
  mov = new Movie(this, "Moped.webm");
  mov.play();
}

void draw()
{
  if (mov.available())
  {
    mov.read();
  }
  image(mov, 0, 0, width, height);
}
