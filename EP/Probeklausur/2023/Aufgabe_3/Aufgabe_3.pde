float a1 = 0;
float a2 = 0;

void setup() {
  size(200, 200);
  
  rectMode(CENTER);
}

void draw() {
  background(200);
  
  translate(width/2, height/2);
  rotate(a1);
  pushMatrix();
  
  rect(0, 0, 100, 20);
  rect(-50, -30, 20, 60);
    
  translate(50, 0);
  rotate(a2);
  rect(0, 0, 40, 10);
  
  popMatrix();
  
  translate(-50, -60);
  rotate(a2);
  rect(0, 0, 40, 10);
  
  
  a2 += 0.1;
}

void keyPressed() {
  if (keyCode == RIGHT) {
    a1 += 0.1;
  }
  if (keyCode == LEFT) {
    a1 -= 0.1;
  }
}
