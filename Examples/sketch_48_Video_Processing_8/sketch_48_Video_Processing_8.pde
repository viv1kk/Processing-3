import processing.video.*;

Capture cam;

void setup()
{
  size(640, 360);
  cam = new Capture(this, 640, 360);
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

      //int[] index = new int[9];

      //index[0] = tlx+tly*cam.width;
      //index[1] = tx+ty*cam.width;
      //index[2] = trx+tr_y*cam.width;
      //index[3] = lx+ly*cam.width;
      //index[4] = x+y*cam.width;
      //index[5] = rx+ry*cam.width;
      //index[6] = blx+bly*cam.width;
      //index[7] = bx+by*cam.width;
      //index[8] = brx+bry*cam.width;

      int index0 = tlx+tly*cam.width;
      int index1 = tx+ty*cam.width;
      int index2 = trx+tr_y*cam.width;
      int index3 = lx+ly*cam.width;
      int index4 = x+y*cam.width;
      int index5 = rx+ry*cam.width;
      int index6 = blx+bly*cam.width;
      int index7 = bx+by*cam.width;
      int index8 = brx+bry*cam.width;

      // RGB

      //float[] r = new float[index.length];
      //float[] g = new float[index.length];
      //float[] b = new float[index.length];

      // Values

      //for (int i = 0; i < index.length; i++)
      //{
      //  r[i] = red(cam.pixels[index[i]]);
      //  g[i] = green(cam.pixels[index[i]]);
      //  b[i] = blue(cam.pixels[index[i]]);
      //}

      //Red

      float r0 = red(cam.pixels[index0]);
      float r1 = red(cam.pixels[index1]);
      float r2 = red(cam.pixels[index2]);
      float r3 = red(cam.pixels[index3]);
      float r4 = red(cam.pixels[index4]);
      float r5 = red(cam.pixels[index5]);
      float r6 = red(cam.pixels[index6]);
      float r7 = red(cam.pixels[index7]);
      float r8 = red(cam.pixels[index8]);

      //Blue

      float b0 = blue(cam.pixels[index0]);
      float b1 = blue(cam.pixels[index1]);
      float b2 = blue(cam.pixels[index2]);
      float b3 = blue(cam.pixels[index3]);
      float b4 = blue(cam.pixels[index4]);
      float b5 = blue(cam.pixels[index5]);
      float b6 = blue(cam.pixels[index6]);
      float b7 = blue(cam.pixels[index7]);
      float b8 = blue(cam.pixels[index8]);

      // Green

      float g0 = green(cam.pixels[index0]);
      float g1 = green(cam.pixels[index1]);
      float g2 = green(cam.pixels[index2]);
      float g3 = green(cam.pixels[index3]);
      float g4 = green(cam.pixels[index4]);
      float g5 = green(cam.pixels[index5]);
      float g6 = green(cam.pixels[index6]);
      float g7 = green(cam.pixels[index7]);
      float g8 = green(cam.pixels[index8]);

      // mean

      //float meanR = (r[0]+r[1]+r[2]+r[3]+r[5]+r[6]+r[7]+r[8])/8;
      //float meanG = (g[0]+g[1]+g[2]+g[3]+g[5]+g[6]+g[7]+g[8])/8;
      //float meanB = (b[0]+b[1]+b[2]+b[3]+b[5]+b[6]+b[7]+b[8])/8;

      float meanR = (r0+r1+r2+r3+r5+r6+r7+r8)/8;
      float meanG = (g0+g1+g2+g3+g5+g6+g7+g8)/8;
      float meanB = (b0+b1+b2+b3+b5+b6+b7+b8)/8;

      // diff

      int diffR = (int)abs(r4-meanR);
      int diffG = (int)abs(g4-meanG);
      int diffB = (int)abs(b4-meanB);

      // map

      int mapR = (int)map(mouseX, 0, cam.width, 0, diffR);
      int mapG = (int)map(mouseX, 0, cam.width, 0, diffG);
      int mapB = (int)map(mouseX, 0, cam.width, 0, diffB);

      colorMode(RGB);
      pixels[index4] = color(diffR*mapR, diffG*mapG, diffB*mapB);
    }
  }
  updatePixels();
}
