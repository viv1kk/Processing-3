import processing.video.*;

Capture cam;

void setup()
{
  size(640, 360);
  cam = new Capture(this, Capture.list()[0]);
  cam.start();
}

void captureEvent(Capture cam)
{
  cam.read();
}

void draw()
{
  loadPixels();
  cam.loadPixels();
  for (int x = 0; x < cam.width; x++)
  {
    for (int y = 0; y < cam.height; y++)
    {
      int tlx = x-1;
      int tly = y-1;

      int tx = x;
      int ty = y-1;

      int trx = x+1;
      int tr_y = y-1;

      int lx = x-1;
      int ly = y;

      int rx = x+1;
      int ry = y;

      int blx = x-1;
      int bly = y+1;

      int bx = x;
      int by = y+1;

      int brx = x+1;
      int bry = y+1;

      // Exceptions

      if (x == 0)
      {
        tlx = 0;
        tly = 0;

        lx = 0;
        ly = 0;

        blx = 0;
        bly = 0;
      }

      if (x == cam.width-1)
      {
        trx = 0;
        tr_y = 0;

        rx = 0;
        ry = 0;

        brx = 0;
        bry = 0;
      }

      if (y == 0)
      {
        tlx = 0;
        tly = 0;

        tx = 0;
        ty = 0;

        trx = 0;
        tr_y = 0;
      }

      if (y == cam.height-1)
      {
        blx = 0;
        bly = 0;

        bx = 0;
        by = 0;

        brx = 0;
        bry = 0;
      }

      // Indices

      int index0 = tlx+tly*cam.width;
      int index1 = tx+ty*cam.width;
      int index2 = trx+tr_y*cam.width;
      int index3 = lx+ly*cam.width;
      int index4 = x+y*cam.width;
      int index5 = rx+ry*cam.width;
      int index6 = blx+bly*cam.width;
      int index7 = bx+by*cam.width;
      int index8 = brx+bry*cam.width;

      // Brightness

      float b0 = brightness(cam.pixels[index0]);
      float b1 = brightness(cam.pixels[index1]);
      float b2 = brightness(cam.pixels[index2]);
      float b3 = brightness(cam.pixels[index3]);
      float b4 = brightness(cam.pixels[index4]);
      float b5 = brightness(cam.pixels[index5]);
      float b6 = brightness(cam.pixels[index6]);
      float b7 = brightness(cam.pixels[index7]);
      float b8 = brightness(cam.pixels[index8]);

      // Mean of Surrounding Pixels

      float mean = (b0+b1+b2+b3+b5+b6+b7+b8)/8;

      // Diff

      float diff = abs(b4-mean);

      // Enhancement

      float map = map(mouseX, 0, cam.width, 0, diff);

      // Applying

      pixels[index4] = color(diff+map);
    }
  }
  updatePixels();
}
