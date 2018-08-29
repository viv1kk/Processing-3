//******************************************************* movieEvent(); ***************************************************//


//Description  

//This event function is run when a new movie frame is available. Use the read() method to capture this frame.
//If there is more than one movie in the program, movieEvent() is called each time any of the movies has a new frame available.
//Use an if to determine which movie is triggering the event. See the above example for implementation details. 

//This function is for people who want to process the image data separately from drawing (and as quickly as possible.) 
//You cannot draw to the screen inside the movieEvent() function. 
//If you want to draw immediately based on the new image, then use the Movie.available() method.


//Syntax  

//void movieEvent(Movie which) {
//  statements
//}


//Parameters  

//statements  any valid statements
//which  the movie with the event


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
}

void draw()
{
  image(mov, 0, 0, width, height);
}
