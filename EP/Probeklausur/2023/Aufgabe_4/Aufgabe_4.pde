Schneeball[] b = new Schneeball[8];
void setup() {
  size(100, 100);

  for (int i = 0; i < b.length; i++) {
    int x;
    boolean r;
    if (i%2 == 0 ) {
      x = 20;
      r = true;
    } else {
      x = 80;
      r = false;
    }

    b[i] = new Schneeball(x, i * 10 + 10, r);
  }
}

void draw() {
  background(200);
  for (int i = 0; i < b.length; i++) {
    b[i].update();
    b[i].render();
  }
}
