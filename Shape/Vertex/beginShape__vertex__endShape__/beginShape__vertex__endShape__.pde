//***********************************************************************************************************************//
//.......................................            beginShape();        ...............................................//
//***********************************************************************************************************************//


//Description

//Using the beginShape() and endShape() functions allow creating more complex forms. 
//beginShape() begins recording vertices for a shape and endShape() stops recording. 
//The value of the kind parameter tells it which types of shapes to create from the provided vertices.
//With no mode specified, the shape can be any irregular polygon. 

//The parameters available for beginShape() are POINTS, LINES, TRIANGLES, TRIANGLE_FAN, TRIANGLE_STRIP, QUADS, and QUAD_STRIP. 

//After calling the beginShape() function, a series of vertex() commands must follow. 
//To stop drawing the shape, call endShape(). 

//The vertex() function with two parameters specifies,
//a position in 2D and the vertex() function with three parameters specifies a position in 3D. 

//Each shape will be outlined with the current stroke color and filled with the fill color. 

//Transformations such as translate(), rotate(), and scale() do not work within beginShape(). 
//It is also not possible to use other shapes, such as ellipse() or rect() within beginShape(). 

//The P2D and P3D renderers allow stroke() and fill() to be altered on a per-vertex basis, but the default renderer does not. 
//Settings such as,
//strokeWeight(), strokeCap(), and strokeJoin() cannot be changed while inside a beginShape()/endShape() block with any renderer.

//Syntax 

//beginShape()
//beginShape(kind)

//Parameters  

//kind  int: Either POINTS, LINES, TRIANGLES, TRIANGLE_FAN, TRIANGLE_STRIP, QUADS, or QUAD_STRIP

//Returns  void


//***********************************************************************************************************************//
//...........................................            vertex();        ...............................................//
//***********************************************************************************************************************//


//Description  

//All shapes are constructed by connecting a series of vertices. 
//vertex() is used to specify the vertex coordinates for points, lines, triangles, quads, and polygons. 
//It is used exclusively within the beginShape() and endShape() functions. 

//Drawing a vertex in 3D using the z parameter requires the P3D parameter in combination with size, as shown in the above example. 

//This function is also used to map a texture onto geometry. 
//The texture() function declares the texture to apply to the geometry and the u and v coordinates set define the mapping of this texture to the form. 
//By default, the coordinates used for u and v are specified in relation to the image's size in pixels, but this relation can be changed with textureMode().

//Syntax  

//vertex(x, y)
//vertex(x, y, z)
//vertex(v)
//vertex(x, y, u, v)
//vertex(x, y, z, u, v)

//Parameters  

//v  float[]: vertex parameters, as a float array of length VERTEX_FIELD_COUNT
//x  float: x-coordinate of the vertex
//y  float: y-coordinate of the vertex
//z  float: z-coordinate of the vertex
//u  float: horizontal coordinate for the texture mapping
//v  float: vertical coordinate for the texture mapping

//Returns  void


//***********************************************************************************************************************//
//...........................................            endShape();        .............................................//
//***********************************************************************************************************************//


//Description

//The endShape() function is the companion to beginShape() and may only be called after beginShape(). 
//When endshape() is called, all of image data defined since the previous call to beginShape() is written into the image buffer. 
//The constant CLOSE as the value for the MODE parameter to close the shape (to connect the beginning and the end).

//Syntax  

//endShape()
//endShape(mode)

//Parameters  

//mode  int: use CLOSE to close the shape

//Returns  void

void setup()
{
  size(900, 900);
}

void draw()
{
  noFill();
  strokeWeight(2);

  // POINTS

  beginShape(POINTS);
  vertex(100, 100);
  vertex(200, 100);
  vertex(100, 200);
  vertex(200, 200);
  endShape(CLOSE);

  // LINE

  beginShape(LINES);
  vertex(300,100);
  vertex(400,100);
  vertex(300,200);
  vertex(400,200);
  endShape(CLOSE);
  
  // TRIANGLE
  
  beginShape(TRIANGLES);
  vertex(500,100);
  vertex(500,200);
  vertex(600,200);
  vertex(700,100);
  vertex(800,100);
  vertex(800,200);
  endShape(CLOSE);
  
  // TRIANGLE_STRIP
  
  beginShape(TRIANGLE_STRIP);
  vertex(100,400);
  vertex(150,300);
  vertex(200,400);
  vertex(250,300);
  vertex(300,400);
  endShape(CLOSE);
  
  // TRIANGLE_FAN

  beginShape(TRIANGLE_FAN);
  vertex(650,400);  // CENTER of the Figure
  vertex(650,300);
  vertex(750,400);
  vertex(650,500);
  vertex(550,400);
  vertex(650,300);
  endShape(CLOSE);
  
  // QUADS
  
  beginShape(QUADS);
  vertex(100,800);
  vertex(100,600);
  vertex(300,600);
  vertex(300,800);
  endShape(CLOSE);

  // QUAD_STRIP
  
  beginShape(QUAD_STRIP);
  vertex(500,600);
  vertex(500,800);
  vertex(600,600);
  vertex(600,800);
  vertex(650,600);
  vertex(650,800);
  vertex(750,600);
  vertex(750,800); 
  endShape(CLOSE);
}
