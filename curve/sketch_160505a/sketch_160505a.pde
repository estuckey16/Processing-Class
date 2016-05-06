int r = 100;
float theta = 0.0;
void setup() {
  
  size(600, 600, P3D);
  background(255);
  strokeWeight(7);
  stroke(0);
  
}

void draw() {
  background(255);
  translate(width/2, height/2, 0);
  rotateY(theta);
  point(0, 0, -r);
  point(0, 0, r);
  point(r, 0, 0);
  point(-r, 0, 0);
  point(0, -r, 0);
  point(0, r, 0);
  theta+=.01;
}
  
  
  
