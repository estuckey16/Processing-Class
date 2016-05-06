float theta = 0.0;
float beta = 0.0;
float alpha = 0.0;
float sigma = 0.0;

void setup() {
  size(800, 600, P3D);
}

void draw() {
  background(0);
  lights();
  noStroke();
  fill(255, 100, 100);
  //pushMatrix();
  translate(width/2, height/2, 0);
  rotateY(theta);
  rotateX(theta);
  pushMatrix();

  rotateX(radians(sigma));


  // draw a cube
  box(50);
  popMatrix();
  //translate(width/3, height/3, 0);
  //draw a box
  //box(50, 40, 100);
  //popMatrix();

  translate(height/6, 0, beta/10.0);
  rotateX(beta);
  fill(100, 100, 255);
  sphere(40);

  translate(-height/6, -height/6, beta/10.0);
  fill(255);
  sphere(40);

  translate(-height/6, height/6, beta/10.0);
  fill(50, 100, 50);
  sphere(40);

  translate(height/6, height/6, beta/10.0);
  fill(#6C790B);
  sphere(40);

  translate(0, -height/6, 100);
  fill(#5316B7);
  sphere(40);

  translate(0, 0, -200);
  fill(#16A0B7);
  sphere(40);


  //  translate(width/6, 0, beta/10.0);
  //  rotateZ(alpha);
  //  fill(100, 50, 255);
  //  drawCylinder(6, 50, 100);

  theta += 0.05;
  beta += 0.01;
  alpha += -0.01;
  sigma += 0.05;
}


void drawCylinder(int sides, float r, float h)
{
  float angle = 360 / sides;
  float halfHeight = h / 2;
  // draw top shape
  beginShape();
  for (int i = 0; i < sides; i++) {
    float x = cos( radians( i * angle ) ) * r;
    float y = sin( radians( i * angle ) ) * r;
    vertex( x, y, -halfHeight );
  }
  endShape(CLOSE);
  // draw bottom shape
  beginShape();
  for (int i = 0; i < sides; i++) {
    float x = cos( radians( i * angle ) ) * r;
    float y = sin( radians( i * angle ) ) * r;
    vertex( x, y, halfHeight );
  }
  endShape(CLOSE);

  beginShape(TRIANGLE_STRIP);
  for (int i = 0; i < sides + 1; i++) {
    float x = cos( radians( i * angle ) ) * r;
    float y = sin( radians( i * angle ) ) * r;
    vertex( x, y, halfHeight);
    vertex( x, y, -halfHeight);
  }
  endShape(CLOSE);
} 



