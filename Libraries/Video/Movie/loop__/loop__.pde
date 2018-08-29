//************************************************************ loop() *************************************************//


//Description  

//Plays a movie continuously, restarting it when it is over.


//Syntax  

//.loop()


//Returns  void


import processing.video.*;

Movie mov;

void setup()
{
  size(640, 360);
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
