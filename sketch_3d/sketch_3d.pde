float theta = 0.0;
float beta = 0.0;
float alpha = 0.0;

void setup() {
  size(800, 700, P3D);
  frameRate(20);
}

void draw() {
  //noStroke();
  background(255);
  //camera(theta, beta, alpha, width-theta, height/2 - beta, 0.0, 0.0, 1.0, 0.0);
  translate(width/2, height/2, 0);
  
  rotateZ(theta/5.0);
  rotateY(beta/5.0);
  rotateX(alpha/5.0);
  theta+=.5;
  beta+=.5;
  alpha += .5;
  //rotateY(0);
  noFill();
  drawHouse(20);
  println("loop");
}

void drawHouse(int x){
       beginShape();
   vertex(0, 0, 0);
   vertex(0, 0, 5*x);
   vertex(10*x, 0, 5*x);
   vertex(10*x, 0, 0);
   vertex(0, 0, 0);
   endShape();
   
   beginShape();
   vertex(0, 0, 0);
   vertex(0, -5*x, 0);
   vertex(0, -5*x, 5*x);
   vertex(0, 0, 5*x);
   vertex(0, 0, 0);
   endShape();
   
   beginShape();
   vertex(0, 0, 0);
   vertex(0, -5*x, 0);
   vertex(10*x, -5*x, 0);
   vertex(10*x, 0, 0);
   vertex(0, 0, 0);
   endShape();
   
   beginShape();
   vertex(10*x, 0, 0);
   vertex(10*x, -5*x, 0);
   vertex(10*x, -5*x, 5*x);
   vertex(10*x, 0, 5*x);
   vertex(10*x, 0, 0);
   endShape();
   
   beginShape();
   vertex(0, -5*x, 0);
   vertex(0, -5*x, 5*x);
   vertex(10*x, -5*x, 5*x);
   vertex(10*x, -5*x, 0);
   vertex(0, -5*x, 0);
   endShape();
   
   beginShape();
   vertex(0, -5*x, 0);
   vertex(0, -7.5*x, 2.5*x);
   vertex(0, -5*x, 5*x);
   vertex(0, -5*x, 0);
   endShape();
   
   beginShape();
   vertex(10*x, -5*x, 0);
   vertex(10*x, -7.5*x, 2.5*x);
   vertex(10*x, -5*x, 5*x);
   vertex(10*x, -5*x, 0);
   endShape();
   
   beginShape();
   vertex(10*x, -7.5*x, 2.5*x);
   vertex(0, -7.5*x, 2.5*x);
   vertex(10*x, -7.5*x, 2.5*x);
   endShape();
}
