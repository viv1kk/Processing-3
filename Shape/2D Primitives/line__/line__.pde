//******************************************** line() *************************************************//

//Description  

//Draws a line (a direct path between two points) to the screen. 
//The version of line() with four parameters draws the line in 2D. 
//To color a line, use the stroke() function. 
//A line cannot be filled, therefore the fill() function will not affect the color of a line. 
//2D lines are drawn with a width of one pixel by default, but this can be changed with the strokeWeight() function. 
//The version with six parameters allows the line to be placed anywhere within XYZ space. 
//Drawing this shape in 3D with the z parameter requires the P3D parameter in combination with size() as shown in the above example.

//Syntax

//line(x1, y1, x2, y2)
//line(x1, y1, z1, x2, y2, z2)

//Parameters

//x1  float: x-coordinate of the first point
//y1  float: y-coordinate of the first point
//z1  float: z-coordinate of the first point
//x2  float: x-coordinate of the second point
//y2  float: y-coordinate of the second point
//z2  float: z-coordinate of the second point

//For 2D Line

//size(900,900);
//line(100,100,800,800);

//For 3D Line

void setup(){
size(900,900,P3D);
noSmooth();
line(100,100,0,800,800,0);
}
