//******************************************** point() *************************************************//


//Description  

//Draws a point, a coordinate in space at the dimension of one pixel. 
//The first parameter is the horizontal value for the point,
//the second value is the vertical value for the point,
//and the optional third value is the depth value.
//Drawing this shape in 3D with the z parameter requires the P3D parameter in combination with size() as shown in the above example. 

//Use stroke() to set the color of a point().

//Syntax  
//point(x, y)
//point(x, y, z)

//Parameters  
//x  float: x-coordinate of the point
//y  float: y-coordinate of the point
//z  float: z-coordinate of the point

//Returns  void

//Draws all geometry and fonts with jagged (aliased) edges and images when hard edges between the pixels when enlarged rather than interpoloating pixels. 
//Note that smooth() is active by default, so it is necessary to call noSmooth() to disable smoothing of geometry, fonts, and images

//In the 2D Sketch

size(640,480);  //Create a Sketch size(Horizontal Pixels, Vertical Pixels); 
point(100,100);
point(100,300);
point(300,100);
point(300,300);

//In the 3D sketch

//size(640,480,P3D); 
//noSmooth();
//point(100,100,-50);
//point(100,300,-50);
//point(300,100,-50);
//point(300,300,-50);
