Stripe[] stripes = new Stripe[10];
void setup() {
  size(600,600);
  for (int i = 0; i < stripes.length; i++) {
    stripes[i] = new Stripe();
  }
}
void draw() {
  background(100);
  // Move and display all stripes
  for (int i = 0; i < stripes.length; i++) {
    stripes[i].rollover(mouseX);
    stripes[i].move();
    stripes[i].display();
  }
}
class Stripe {
  float x; // horizontal location of stripe
  float speed; // speed of stripe
  float w; // width of stripe
  boolean mouse; // Is the mouse over the stripe?
  Stripe() {
    x = 0; // All stripes start at 0
    speed = random(1); // All stripes have a random positive speed
    w = random(30, 100);
    mouse = false;
  }
  void display() {
    if (mouse) {
      fill(255);
    } else {
      fill(255, 100);
    }
    noStroke();
    rect(x, 0, w, height);
  }
  void move() {
    x += speed;
    if (x > width + w) x = -w;
  }
  void rollover(int mx) { 
    // Left edge is x, right edge is x + w
    if (mx > x && mx < x + w) {
      mouse = true;
    } else {
      mouse = false;
    }
  }
}
