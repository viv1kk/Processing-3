PImage frog;

void setup()
{
  size(858, 536);
  frog = loadImage("frog.jpg");
}

void draw()
{
  background(0);
  loadPixels();
  frog.loadPixels();

  for (int x = 0; x < width; x++)
  {
    for (int y = 0; y < height; y++)
    {

      // TOP
      int tlx = 0;
      int tly = 0;

      int tx = 0;
      int ty = 0;

      int trx = 0;
      int tr_y = 0;


      // MIDDLE

      int lx = x-1;
      int ly = y;

      int rx = x+1;
      int ry = y;

      // BOTTOM

      int blx = x-1;
      int bly = y+1;

      int bx = x;
      int by = y+1;

      int brx = x+1;
      int bry = y+1;

      if (y == 0)
      {
        tlx = 0;
        tly = 0;

        tx = 0;
        ty = 0;

        trx = 0;
        tr_y = 0;
      }
      if (y ==height-1)
      {
        blx = 0;
        bly = 0;

        bx = 0;
        by = 0;

        brx = 0;
        bry = 0;
      }
      if (x == 0)
      {
       tlx = 0;
       tly = 0;
       
       lx = 0;
       ly = 0;
       
       blx = 0;
       bly = 0;
      }
      
      if(x == width-1)
      {
       trx = 0;
       tr_y = 0;
       
       rx = 0;
       ry = 0;
       
       brx = 0;
       bry = 0;
      }


      // Brightness

      // TOP

      int b1 = (int)brightness(frog.pixels[tlx+tly*width]);
      int b2 = (int)brightness(frog.pixels[tx+ty*width]);
      int b3 = (int)brightness(frog.pixels[trx+tr_y*width]);

      // MIDDLE

      int b4 = (int)brightness(frog.pixels[lx+ly*width]);
      int b5 = (int)brightness(frog.pixels[x+y*width]);
      int b6 = (int)brightness(frog.pixels[rx+ry*width]);

      // BOTTOM

      int b7 = (int)brightness(frog.pixels[blx+bly*width]);
      int b8 = (int)brightness(frog.pixels[bx+by*width]);
      int b9 = (int)brightness(frog.pixels[brx+bry*width]);

      int mean = (b1+b2+b3+b4+b6+b7+b8+b9)/8;
      int diff = abs(b5-mean);

      int map = (int)map(mouseX, 0, width, 0, diff);

      pixels[x+y*width] = color(diff+map);
    }
  }
  updatePixels();
}
