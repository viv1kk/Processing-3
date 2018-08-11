//******************************************** ARRAYS *************************************************//


//Description

//An array is a list of data.
//It is possible to have an array of any type of data.
//Each piece of data in an array is identified by an index number representing its position in the array.
//The first element in the array is [0], the second element is [1], and so on.
//Arrays are similar to objects, so they must be created with the keyword new.

//Each array has a variable length, which is an integer value for the total number of elements in the array.
//Note that since index numbering begins at zero (not 1), 
//the last value in an array with a length of 5 should be referenced as array[4] (that is, the length minus 1), 
//not array[5], which would trigger an error.

//Another common source of confusion is the difference between using length to get the size of an array and length() to get the size of a String. 
//Notice the presence of parentheses when working with Strings. 
//(array.length is a variable, while String.length() is a method specific to the String class.)


//Syntax  

//datatype[] var
//var[element] = value
//var.length


//Parameters  

//datatype    any primitive or compound datatype, including user-defined classes
//var         any valid variable name
//element     int: must not exceed the length of the array minus 1
//value       data to assign to the array element; must be the same datatype as the array



Bubble[] b = new Bubble[10];

void setup()
{
  size(640, 360);

  for (int i = 0; i < b.length; i++)
  {
    int c = (int)random(20,70);
    int a = (int)random(c/2,width-(c/2));
    int d = (int)random(height/4,height-(c/2));
    
    b[i] = new Bubble(a,d,c);
  }
}

void draw()
{
  background(0);
  for (int i = 0; i<b.length; i++)
  {
    b[i].display();
    b[i].ascend();
    b[i].check();
  }
}
