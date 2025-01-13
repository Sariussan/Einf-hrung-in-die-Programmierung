float a1 = 0.0;
float a2 = 0.0;

void setup() {
  size(200, 200);
  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(200);
  // big rect
  translate(width/2, height/2);
  rotate(a1);
  fill(255);
  rect(0, 0, 40, 40);
  
  //

  //red rect
  translate(20, 0);
  translate(0, sin(frameCount));
  fill(255, 0, 0);
  rotate(a2);
  rect(0,0, 5, 5); 
  
  //
  a1 += 0.01;
  a2 += 0.1;
}
