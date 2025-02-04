class Schneeball {
  PVector pos;
  boolean right;
  boolean isRect = false;

  Schneeball(int x, int y, boolean r) {
    pos = new PVector(x, y);
    right = r;
  }

  void update() {
    if (!isRect) {
      if (right) {
        pos.x += 1;
      } else {
        pos.x -= 1;
      }
    }
  }

  void render() {
    if (dist(width/2, pos.y, pos.x, pos.y) < width/2 - 1) {
      ellipse(pos.x, pos.y, 10, 10);
    } else {
      rectMode(CENTER);
      this.isRect = true;
      rect(pos.x, pos.y, 10, 10);
    }
  }
}
