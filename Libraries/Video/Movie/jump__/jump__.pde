//******************************************************** jump(); *******************************************************//


//Description 

//Jumps to a specific location within a movie. The parameter where is in terms of seconds. 
//For example, if the movie is 12.2 seconds long, calling jump(6.1) would go to the middle of the movie.


//Syntax  

//.jump(where)


//Parameters  

//where  float: position to jump to specified in seconds


//Returns  void


import processing.video.*;

Movie mov;
boolean cont = false;

void setup()
{
  size(640, 360,P2D);
  frameRate(24);
  mov = new Movie(this, "Moped.webm");
}

void keyPressed()
{
  cont = !cont;
  if (cont)
  {
    mov.play();
    println("Video Plays now...");
  } else
  {
    mov.pause();
    println("Video Pause now...");
  }
}

void mousePressed()
{
  float map = map(mouseX, 0, width, 0, 10.000);
  mov.jump(map);
  println("Jumps to the "+mov+" sec");
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
