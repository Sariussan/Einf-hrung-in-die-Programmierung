int ballsize = 30;
float x, y;
float xspeed = 2.0;
float yspeed = xspeed * 2;

void setup() {
  size(100, 100);
  x = 0;
  y = 0;
}

void draw() {
  background(0);
  
  //move balls
  if(x + xspeed > width || x + xspeed < 0) {
    xspeed = -xspeed;
  }
  if(y + yspeed > height || y + yspeed < 0) {
    yspeed = -yspeed;
  }
  
  x += xspeed;
  y+= yspeed;
  
  //draw balls
  fill(#FFFFFF);
  ellipse(x, height/2, ballsize, ballsize);
  fill(#FFEC15);
  ellipse(width/2, y, ballsize, ballsize);
  
}

void mousePressed() {
  if (dist(mouseX, mouseY, x, height/2) < ballsize/2) {
    xspeed = -xspeed;
  }
  if(dist(mouseX, mouseY, width/2, y) < ballsize/2) {
    yspeed = -yspeed;
  }
}
