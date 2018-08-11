// Source
// Daniel Shiffman
// The Coding Train
// https://www.youtube.com/watch?v=j_XyeWg_3EE&list=PLRqwX-V7Uu6ajGB2OI3hl5DZsD1Fw1WzR&index=3


//float dish;
//float disw;
//float fina;

void setup()
{
  size(640,360);
}
void draw()
{
  background(0);
  stroke(255);
  strokeWeight(2);
  
  //STAR
  
  beginShape(LINES);
  vertex(180,20);
  vertex(211,100);
  vertex(180,20);
  vertex(150,100);
  vertex(211,100);
  vertex(296,100);
  vertex(296,100);
  vertex(232,157);
  vertex(150,100);
  vertex(65,100);
  vertex(65,100);
  vertex(129,157);
  vertex(129,157);
  vertex(111,241);
  vertex(111,241);
  vertex(180,191);
  vertex(180,191);
  vertex(249,241);
  vertex(249,241);
  vertex(232,157);
  endShape();
  
  //dish = (int)dist(180,20,(111 + 249)/2,241);
  //disw = (int)dist(129,157,232,157);
  
  //println("height : "+dish);
  //println("width  : "+disw);
  
  //height = 221;
  //width = 103;
  
  //fina = (int) dist(180,131,(111+249)/2,241);
  //println(fina);
  //point(180,131);
  //fina = (int)dist(180,131,249,241);
  //println(fina);
}
