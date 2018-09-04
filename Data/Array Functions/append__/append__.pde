//********************************************************** append() *****************************************************//


//Description  

//Expands an array by one element and adds data to the new position. 
//The datatype of the element parameter must be the same as the datatype of the array.

//When using an array of objects, the data returned from the function must be cast to the object array's data type. 
//For example: SomeClass[] items = (SomeClass[]) append(originalArray, element)


//Syntax  

//append(array, value)


//Parameters  

//array  Object, String[], float[], int[], char[], or byte[]: array to append
//value  Object, String, float, int, char, or byte: new data for the array
//Returns  byte[], char[], int[], float[], String[], or Object



Ball[] ball = new Ball[1];

void setup()
{
  size(640,360);
  
  ball[0] = new Ball(300,150);
}

void draw()
{
  background(255);
  for(int i = 0; i < ball.length; i++)
  {
    ball[i].display();
  }
}

void mousePressed()
{
  Ball b = new Ball(mouseX,mouseY);
  ball = (Ball[]) append(ball,b);
}
