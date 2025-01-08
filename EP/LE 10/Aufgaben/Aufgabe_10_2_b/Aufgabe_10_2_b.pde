float angle;

void setup() {
  size(400, 400);
  rectMode(CENTER);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  rotate(radians(angle));
  rect(0, 0, 200, 200);
  
  angle += 1; 
}
