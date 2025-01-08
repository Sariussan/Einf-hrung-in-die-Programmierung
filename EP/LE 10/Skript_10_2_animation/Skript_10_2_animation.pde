//dritter rotor

float a = 0;
float a2 = 0;
float a3 = 0;
boolean run = true;

void setup() {
  size(300, 300);
  strokeWeight(1);
  background(0);
}

void draw() {

  if (run) {
    translate(width/2, height/2);
    rotate(a);

    translate(100, 0);
    rotate(a2);
    stroke(255, 0, 0);
    line(-30, 0, 30, 0);

    translate(30, 0);
    rotate(a3);
    stroke(0, 0, 255);

    line(-15, 0, 15, 0);


    a += .03;
    a2 += .02;
    a3 += .01;
  }
}

void keyPressed() {
  background(0);
}

void mousePressed() {
  run = !run;
}
