//************************************************* keyPressed() ***************************************************//


//Description

//The keyPressed() function is called once every time a key is pressed. The key that was pressed is stored in the key variable. 
//For non-ASCII keys, use the keyCode variable. 
//The keys included in the ASCII specification (BACKSPACE, TAB, ENTER, RETURN, ESC, and DELETE) 
//do not require checking to see if the key is coded; for those keys, 
//you should simply use the key variable directly (and not keyCode). 
//If you're making cross-platform projects, note that the ENTER key is commonly used on PCs and Unix, 
//while the RETURN key is used on Macs. Make sure your program will work on all platforms by checking for both ENTER and RETURN. 
//Because of how operating systems handle key repeats, holding down a key may cause multiple calls to keyPressed(). 
//The rate of repeat is set by the operating system, and may be configured differently on each computer. 
//Note that there is a similarly named boolean variable called keyPressed. See its reference page for more information. 
//Mouse and keyboard events only work when a program has draw().
//Without draw(),the code is only run once and then stops listening for events. 
//With the release of macOS Sierra, Apple changed how key repeat works, so keyPressed may not function as expected.
//See here for details of the problem and how to fix it.

//Syntax

//keyPressed()
//keyPressed(event)
//Returns  void



void setup()
{
  size(640, 360);
  background(255);
}

void draw()
{
  stroke(0);
  strokeWeight(3);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void keyPressed()
{
  background(255);
}
