//******************************************** setup() *************************************************//

//Description  

//The setup() function is run once, when the program starts. 
//It's used to define initial enviroment properties such as screen size and to load media such as images and fonts as the program starts. 
//There can only be one setup() function for each program and it shouldn't be called again after its initial execution.
//If the sketch is a different dimension than the default, the size() function or fullScreen() function must be the first line in setup().
//Note: Variables declared within setup() are not accessible within other functions, including draw().

//Syntax  

//setup()

//Returns  void


//******************************************** draw() *************************************************//

//Description

//Called directly after setup(), the draw() function continuously executes the lines of code contained inside its block until the program is stopped or noLoop() is called. 
//draw() is called automatically and should never be called explicitly. 
//All Processing programs update the screen at the end of draw(), never earlier.
//To stop the code inside of draw() from running continuously, use noLoop(), redraw() and loop(). 
//If noLoop() is used to stop the code in draw() from running, then redraw() will cause the code inside draw() to run a single time, and loop() will cause the code inside draw() to resume running continuously.
//The number of times draw() executes in each second may be controlled with the frameRate() function.
//It is common to call background() near the beginning of the draw() loop to clear the contents of the window, as shown in the first example above. 
//Since pixels drawn to the window are cumulative, omitting background() may result in unintended results.
//There can only be one draw() function for each sketch, and draw() must exist if you want the code to run continuously, or to process events such as mousePressed(). 
//Sometimes, you might have an empty call to draw() in your program, as shown in the second example above.

//Syntax  

//draw()

//Returns  void


void setup()
{
  size(640,360);
}
void draw()
{
  rectMode(CENTER);
  stroke(255);
  fill(255,0,255,200);
  rect(320,160,120,90);
}
