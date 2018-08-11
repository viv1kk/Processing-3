float centerX = 0;
float centerY = 0;

void setup()
{
  size(640, 360);
}
void draw()
{
  background(0);
  stroke(255);
  strokeWeight(2);
  noFill();

  //STAR

  beginShape();
  //vertex(100, 50);//
  vertex(100, 52);

  vertex(114, 80);
  //vertex(147, 85);//
  vertex(146, 85);

  vertex(123, 107);
  //vertex(129, 140);//
  vertex(128, 140);

  vertex(100, 125);
  //vertex(71, 140);//
  vertex(72, 140);

  vertex(77, 107);
  //vertex(53, 85);//
  vertex(54, 85);

  vertex(86, 80);

  endShape(CLOSE);

  // CALCULATIONS
  //PENTAGON

  //line(100, 50, 147, 85);
  //line(147, 85, 129, 140);
  //line(129, 140, 71, 140);
  //line(71, 140, 53, 85);
  //line(53, 85, 100, 50);

  // CENTER of Pentagon
  float rad = 0;
  float size = 0;
  rad = -sin(54);
  size = (int)(29*(1 / rad));
  println(size);
  centerX = 100;
  centerY = 50 + size;
  //println("x : " + centerX);
  //println("y : " + centerY);

  point(centerX, centerY);

  // HEIGHT (PERTPENDICULSR FOR THE PENTAGON)

  float h = 0;
  rad = -cos(54);
  h = (int)(size*rad);
  //println(h);
  // Measurements of PENTAGON SIDES

  //CLOCKWISE

  //  println("a : "+(int)dist(100,50,147,85));
  //  println("b : "+(int)dist(147,85,129,140));
  //  println("c : "+(int)dist(129,140,71,140));
  //  println("d : "+(int)dist(71,140,53,85));
  //  println("e : "+(int)dist(53,85,100,50));


  //DISTANCE FROM CENTER PENTAGON

  //println("a : "+(int)dist(centerX,centerY,100,50));
  //println("b : "+(int)dist(centerX,centerY,147,85));
  //println("c : "+(int)dist(centerX,centerY,129,140));
  //println("d : "+(int)dist(centerX,centerY,71,140));
  //println("e : "+(int)dist(centerX,centerY,53,85));

  // INNER SIDE OF STAR

  //println("a : "+(int)dist(centerX,centerY,114,80));
  //println("b : "+(int)dist(centerX,centerY,123,107));
  //println("c : "+(int)dist(centerX,centerY,100, 125));
  //println("d : "+(int)dist(centerX,centerY,77, 107));
  //println("e : "+(int)dist(centerX,centerY,86, 80));




  // TESTING

  //println("a : "+(int)dist(centerX,100,100,52));
  //println("b : "+(int)dist(centerX,100,146,85));
  //println("c : "+(int)dist(centerX,100,128,140));
  //println("d : "+(int)dist(centerX,100,72,140));
  //println("e : "+(int)dist(centerX,100,54,85));
}
