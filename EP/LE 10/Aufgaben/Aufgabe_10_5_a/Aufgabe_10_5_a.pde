float a = 0.0;

void setup() {
  size(100, 100);
  background(0);
  fill(255);
  rectMode(CENTER);
}


void draw() {
  
  background(0);
  //center the System and save
  translate(width/2, height/2);

  pushMatrix();

  //translation 1
  translate(-25, 0);
  rotate(a);
  //rect 1 - 25, 50
  rect(0, 0, 20, 20);

  //recenter
  popMatrix();

  //translation 2
  translate(25, 0);
  rotate(a);
  //rect 2 - 75, 50
  rect(0, 0, 20, 20);

  //increase rotates
  a += 0.1;
}
