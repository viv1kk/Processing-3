class Zoog
{
  int x;
  int y;
  int w = 25;
  int h = 100;
  int prelX, prerX, preY;

  Zoog(int a, int b)
  {
    x = a;
    y = b;
    prelX = x-w/2;
    prerX = x-w/2;
    preY = (y+h/2)+50;
  }


  void display()
  {
    // Body

    rectMode(CENTER);
    fill(100);
    rect(x, y, w, h);

    // Head
    fill(255);
    ellipse(x, y - h/2, h-h/6, h-h/6);

    // Eyes
    fill(0);
    ellipse(x-(h-h/2)/2, y - h/2, (h/4), (h/2));
    ellipse(x+(h-h/2)/2, y - h/2, (h/4), (h/2));

    // Arms
    line(x-w/2, y, x-(w/2)-20, y);
    line(x-w/2, y+10, x-(w/2)-20, y+10);
    line(x-w/2, y+20, x-(w/2)-20, y+20);
    line(x-w/2, y+30, x-(w/2)-20, y+30);
    line(x-w/2, y+40, x-(w/2)-20, y+40);

    line(x+w/2, y, x+(w/2)+20, y);
    line(x+w/2, y+10, x+(w/2)+20, y+10);
    line(x+w/2, y+20, x+(w/2)+20, y+20);
    line(x+w/2, y+30, x+(w/2)+20, y+30);
    line(x+w/2, y+40, x+(w/2)+20, y+40);

    // Legs
    line(x-w/2, y+h/2, prelX, preY);
    line(x+w/2, y+h/2, prerX, preY);

    prelX = x-w/2;
    prerX = x+w/2;
    preY = y+h/2 + 20;
  }

  void ziggle()
  {
    float mapX = map(mouseX, 0, width, 0.0, 5.0);
    float mapY = map(mouseY, 0, height, 0.0, 5.0);
    x = x+(int)random(-2, 2)*(int)mapX;
    y = y+(int)random(-2, 2)*(int)mapY;
  }
}
