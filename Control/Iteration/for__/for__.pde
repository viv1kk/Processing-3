//************************************************* for() ********************************************//


//Description  

//Controls a sequence of repetitions. 
//A basic for structure has three parts: init, test, and update. 
//Each part must be separated by a semicolon (;). 
//The loop continues until the test evaluates to false. 
//When a for structure is executed, the following sequence of events occurs:

//1. The init statement is run.
//2. The test is evaluated to be true or false.
//3. If the test is true, jump to step 4. If the test is false, jump to step 6.
//4. Run the statements within the block.
//5. Run the update statement and jump to step 2.
//6. Exit the loop.

//In the first example above, the for structure is executed 40 times. 
//In the init statement, the value i is created and set to zero.
//i is less than 40, so the test evaluates as true. 
//At the end of each loop, i is incremented by one. 
//On the 41st execution, the test is evaluated as false, because i is then equal to 40, so i < 40 is no longer true. 
//Thus, the loop exits.

//A second type of for structure makes it easier to iterate over each element of an array. 
//The last example above shows how it works. 
//Within the parentheses, first define the datatype of the array, then define a variable name. 
//This variable name will be assigned to each element of the array in turn as the for moves through the entire array. 
//Finally, after the colon, define the array name to be used.

//Syntax  

//for (init; test; update) { 
//  statements
//} 

//for (datatype element : array) { 
//  statements
//}

//Parameters  

//init  statement executed once when beginning loop

//test  if the test evaluates to true, the statements execute

//update  executes at the end of each iteration

//statements  collection of statements executed each time through the loop

//datatype  datatype of elements in the array

//element  temporary name to use for each element of the array

//array  name of the array to iterate through


float x;
float y;
float spacing;

void setup()
{
  size(640, 360);
}

void draw()
{
  spacing = 40;

  background(0);
  stroke(255);
  strokeWeight(2);

  for (x = 0, y = 0; x < width || x < height; x+=spacing, y+=spacing)
  {
    line(x, 0, x, height);
    line(0, y, width, y);
  }
}
