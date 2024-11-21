PVector[] speed = new PVector[10];
PVector[] location = new PVector[10];
color[] c = new color[10];


void setup() {
  for (int i = 0; i < 10; ++i) {
    location[i] = new PVector(random(width), random(height));
    speed[i] = new PVector(random(-5, 5), random(-5, 5));
    c[i] = color(random(255), random(255), random(255));
  }
}

void draw() {
  for (int i = 0; i < 10; ++i) {
    location[i].add(speed[i]);
    fill(c[i]);
    ellipse(location[i].x, location[i].y, 10, 10);
  }
}
