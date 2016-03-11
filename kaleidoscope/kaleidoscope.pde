// Project: Kaleidoscope
// WebApps:2ndSemester:2016:10Mar
// Ellie Stuckey
// The purpose of this code is to create a kaleidoscope using Processing

// Global constants for width and height
float WIDTH = 700;
float HEIGHT = 700;

float rotator = 0;

float x = 0;
float y = 0;
//float sideLength = 40;
float h = 60; //sqrt((sideLength*sideLength) - (sideLength/2 * sideLength/2));

float triangleX1 = x;
  float triangleY1 = y - ((2.0/3.0)*h);
  float triangleX2 = x + ((sqrt(1.0/3.0)) * h);
  float triangleY2 = y + ((1.0/3.0) * h);
  float triangleX3 = x - ((sqrt(1.0/3.0)) * h);
  float triangleY3 = y + ((1.0/3.0) * h);
  
  float slope1 = (triangleY2 - triangleY1)/(triangleX2 - triangleX1);
  float slope2 = (triangleY3 - triangleY1)/(triangleX3 - triangleX1);

void setup() {
  size(700, 700);
  background(0);
  frameRate(60);
}



void draw() {
  background(0);
  stroke(255);
  pushMatrix();
  translate(WIDTH/2, HEIGHT/2);
  line(0, -HEIGHT/2, 0, HEIGHT/2);
  line(-WIDTH/2, 0, WIDTH/2, 0);
  rectMode(CENTER);
  rotate(rotator);
  //rect(0, 0, 30, 30);
  noFill();
  triangleColors(x, y, h);
  loadPixels();
  int x = 0;
  for (float outside = y - ((2.0/3.0)*h); outside < y + ((1.0/3.0) * h); outside++) {
println("here too");
    for (float index = x - ((sqrt(1.0/3.0)) * h); index < x + ((sqrt(1.0/3.0)) * h); index++) {
      if ((index <= triangleX1 - ((triangleY1 - outside) / slope1) && (index >= triangleX1 - ((triangleY1 - outside)/slope2)))){
       println("here");
        float loc = index + outside * WIDTH;
       pixels[x] = pixels[(int)index];
      }
    
    }
  }
  updatePixels();


    popMatrix();
}