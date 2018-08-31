class Snake
{
  int[] x;
  int[] y;
  int var;

  Snake(int size)
  {
    var = size;

    x = new int[var];
    y = new int[var];
  }

  void displayTrail()
  {
    for (int i = 0; i < x.length; i++)
    {
      noStroke();
      fill(255-i*5);
      ellipse(x[i], y[i], i, i);
    }
  }
}
