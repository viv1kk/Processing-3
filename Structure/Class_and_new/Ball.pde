//******************************************** Class *************************************************//

//Description  

//Keyword used to indicate the declaration of a class. 
//A class is a composite of fields (data) and methods (functions that are a part of the class) which may be instantiated as objects. 
//The first letter of a class name is usually uppercase to separate it from other kinds of variables. 
//A related tutorial on Object-Oriented Programming is hosted on the Oracle website.

//Syntax  

//class ClassName {
//  statements
//}

//Parameters  

//ClassName: Any valid variable name
//statements: any valid statements

class Ball
{
  float x;
  float y;

  Ball()
  {
    x = width/2;
    y = height-33;
  }
  void display()
  {
    ellipse(x, y, 65, 65);
  }
  void update()
  {
    y--;
  }
  void check()
  {
    if (y<=33)
    {
      y = 33;
    }
  }

  void pop()
  {
    float a = 0;
    a = (int)dist(mouseX,mouseY,x,y);
  if(a<33)
  {
    fill(0);
    stroke(0);
  }
}
}
