class Floater {
  float x, y, geschwindigkeit;
  boolean horizontal;


  Floater(boolean h) {
    horizontal = h;
    x = random(width);
    y = random(height);
    geschwindigkeit = random(3);
  }


  void render() {
    rect(x, y, 20, 20);
  }


  void update() {
    if (horizontal) {
      if (((x += geschwindigkeit) > width) || (x + geschwindigkeit) < 0) {
        geschwindigkeit = -geschwindigkeit;
      }
    } else {
      if (((y += geschwindigkeit) > height) || (y + geschwindigkeit) < 0) {
        geschwindigkeit = -geschwindigkeit;
      }
    }
  }
}
