//make a bouncing ball

//declare variables
int x, y, xSpeed, ySpeed, diam;

void setup() {
  size(800, 600); 

  //initialize variables
  x = width/2;
  y = height/2;
  xSpeed = 3;
  ySpeed = 1;
  diam = 50;
}

void draw() {
  background(0);
  ellipse(x, y, diam, diam);  //draw ellipse

  //move ellipse
  x += xSpeed;
  y += ySpeed;

  //bounce ellipse
  if (x >= width || x <= 0) {
    xSpeed *= -1;
  }
  if (y >= height || y <= 0) {
    ySpeed *= -1;
  }
}