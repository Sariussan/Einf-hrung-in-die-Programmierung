class Ball {
  float xpos, ypos;
  int size, col;
  PVector vec = new PVector();


  Ball() {
    size = 50;
    xpos = random(size, width-size);
    ypos = random(size, height-size);
    vec.x = random(-2, 2);
    vec.y = random(-2, 2);
    col = int(random(50, 200));
  }

  void render() {
    noStroke();
    fill(col);
    ellipse(xpos, ypos, size, size);
  }

  void update() {
    xpos = xpos + vec.x;
    ypos = ypos + vec.y;

    if (xpos <= 0 + size/2 || xpos >= width - size/2 ) {
      vec.x = -vec.x;
    }
    if (ypos <= 0 + size/2 || ypos >= width - size/2 ) {
      vec.y = -vec.y;
    }
  }

  void kollision(Ball[] b) {
    for (int i = 0; i < b.length; i++) {
      if (this.xpos != b[i].xpos && this.ypos != b[i].ypos) { // check for self collision
        if (dist(this.xpos, this.ypos, b[i].xpos, b[i].ypos) < this.size) {
          b[i].vec.x = -b[i].vec.x;
          b[i].vec.y = -b[i].vec.y;
          this.vec.x = -this.vec.x;
          this.vec.y = -this.vec.y;
        }
      }
    }
  }
}
