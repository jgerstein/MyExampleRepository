//make a lot of bouncing balls
int num = 10;

//create arrays
float[] x = new float[num];
float[] y = new float[num];
float[] xSpeed = new float[num];
float[] ySpeed = new float[num];
float[] diam = new float [num];

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 600); 
  strokeWeight(10);

  //initialize variables
  for (int i = 0; i < num; i++) {
    x[i] = random(width*.25, width*.75);
    y[i] = random(height*.25, height*.75);
    xSpeed[i] = random(-5, 5);
    ySpeed[i] = random(-5, 5);
    diam[i] = random(3, 100);
  }
}

void draw() {
  background(0);
  fill(frameCount%360, 100, 100);
  stroke(360-frameCount%360, 100, 100);
  for (int i = 0; i < num; i++) {
    ellipse(x[i], y[i], diam[i], diam[i]);  //draw ellipse

    //move ellipse
    x[i] += xSpeed[i];
    y[i] += ySpeed[i];

    //bounce ellipse
    if (x[i] >= width || x[i] <= 0) {
      xSpeed[i] *= -1;
    }
    if (y[i] >= height || y[i] <= 0) {
      ySpeed[i] *= -1;
    }
  }
}