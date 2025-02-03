Floater[] arr = new Floater[6];

void setup() {
  size(100, 100);

  for (int i = 0; i < arr.length; i++) {
    boolean hor = false;
    if (i%2 == 0) {
      hor = true;
    }
    arr[i] = new Floater(hor);
  }
}

void draw() {
  background(200);
  
  for(int i = 0; i < arr.length; i++) {
    arr[i].update();
    arr[i].render();
  }
}

void mousePressed() {
  for(int i = 0; i < arr.length; i++) {
    if (arr[i].horizontal) {
      arr[i].horizontal = false;
    } else {
        arr[i].horizontal = true;
    }
  }
}
