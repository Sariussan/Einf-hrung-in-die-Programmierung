//dritter rotor



float a = 0;
float a2 = 0;
float a3 = 0;

void setup() {
  size(300, 300);
  strokeWeight(3);
}

void draw() {
  background(0);

  translate(width/2, height/2);
  rotate(a);
  stroke(255);
  line(-100, 0, 100, 0);

  translate(100, 0);
  rotate(a2);
  line(-30, 0, 30, 0);
  
  translate(30, 0);
  rotate(a3);
  line(-15, 0, 15, 0);

  a += .03;
  a2 += .02;
  a3 += .01;
}
