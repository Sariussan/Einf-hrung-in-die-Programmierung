float xspeed;
float yspeed;
PVector ballpos = new PVector(random(35, 65), random(15, 85));

void setup() {
  size(100, 100);
  rectMode(CENTER);
  xspeed= random(-3, 3);
  yspeed = random(-3, 3);
}

void draw() {
  background(200);

  //rect
  noFill();
  rect(width/2, height/2, 60, 80);

  //ball

  if (ballpos.x + xspeed < 35 | ballpos.x + xspeed > 65) {
    xspeed = -xspeed;
  }
  if (ballpos.y + yspeed < 15 | ballpos.y + yspeed > 85) {
    yspeed = -yspeed;
  }
  
  ballpos.x += xspeed;
  ballpos.y += yspeed;
  
  ellipse(ballpos.x, ballpos.y, 10, 10);
}
