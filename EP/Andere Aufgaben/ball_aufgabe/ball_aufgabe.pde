Ball[] b = new Ball[10];

void setup() {
  size(500, 500);
  for (int i = 0; i < b.length; i++) {
    b[i] = new Ball();
  }
}



void draw() {
  background(0);
  for (int i = 0; i < b.length; i++) {
    b[i].update();
    b[i].kollision(b);
    b[i].render();
  }
}
