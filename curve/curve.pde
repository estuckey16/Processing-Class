// Project: Epicycloid
// WebApps:2016:2ndSemester:25Feb
// Ellie Stuckey
// This project uses triangles to create an epicycloid


float WIDTH = 600;
float HEIGHT = 600;

// Global Variables for this project should include the radius of the small circle, 
// the radius of the large circle, 

float smallRadius = 30;    // Radius of the smaller cirlce
float bigRadius = WIDTH/16;    // Radius of the larger circle
float theta = 0;        // Value of the angle
float deltaTheta = (PI/100);
float deltaCoeff = (60);
float sideLength = 138.6;
float h = smallRadius * 2;//sqrt((sideLength*sideLength) - (sideLength/2 * sideLength/2));
float rotator = 0;
float sliderRadius = 50;
float sliderRadiusBig = 50;
float sliderTheta = 50;

void setup() {
  size(600, 600);
  background(255);
  stroke(0, 0, 0, 50);
  //frameRate(35);
}


void draw() {
  text("Small Radius", 10, 90);
  rect(10, 100, 100, 10);
  rect(sliderRadius, 100, 10, 10);

  text("Big Radius", 10, 140);
  rect(10, 150, 100, 10);
  rect(sliderRadiusBig, 150, 10, 10);
  
  text("Theta", 10, 40);
  rect(10, 50, 100, 10);
  rect(sliderTheta, 50, 10, 10);
  
  text("Clear", 20, 215);
  rect(10, 200, 50, 20);
  

  float transparancy = random(1, 100);

  stroke(random(1, 256), random(1, 256), random(1, 256), transparancy);

  // Move the origin to the center of the canvas
  pushMatrix();
  translate(WIDTH/2, HEIGHT/2);

  // Draw a large circle the size of the screen
  noFill();
  //ellipse(0, 0, WIDTH, HEIGHT);

  float xValue = (bigRadius + smallRadius) * cos(theta) - smallRadius * cos(((bigRadius/smallRadius) - 1) * theta);
  float yValue = (bigRadius + smallRadius) * sin(theta) - smallRadius * sin(((bigRadius/smallRadius) - 1) * theta);

  //ellipse(xValue, yValue, smallRadius * 2, smallRadius * 2);

  pushMatrix();
  translate(xValue, yValue);
  rotate(rotator);

  //ellipse(0, 0, smallRadius * 2, smallRadius * 2);

  triangle(0, 0 - ((2.0/3.0)*h), 0 + ((sqrt(1.0/3.0)) * h), 0 + ((1.0/3.0) * h), 0 - ((sqrt(1.0/3.0)) * h), 0 + ((1.0/3.0) * h));
  //stroke(100, 150, 50, 175);
  //ellipse(xValue, yValue, 4, 4);

  popMatrix();

  fill(0);
  //text("hello", xValue + smallRadius, yValue + smallRadius);
  noFill();
  theta += deltaTheta;
  rotator += PI / 20;

  if (rotator >= TWO_PI) {
    rotator = 0;
  }

  if (theta > 5 * deltaCoeff * PI) {
    background(255);
    //stroke(random(1, 256), random(1, 256), random(1, 256));
    theta = 0;
  }

  popMatrix();
}

void mouseDragged() {
  // the top slider changes the radius of the small circle on the outside
  if (pmouseX > mouseX && mouseX >= sliderRadius && mouseX < sliderRadius + 10 
  && mouseY > 100 && mouseY < 110) {
  fill(255);
  rect(10, 100, 100, 10);
  noFill();
  if (sliderRadius > 10) {
    sliderRadius -= 2;
    smallRadius -= 2;
  }
  } else if (pmouseX < mouseX && mouseX >= sliderRadius && mouseX < sliderRadius + 10 
  && mouseY > 100 && mouseY < 110) {
  fill(255);
  rect(10, 100, 100, 10);
  noFill();
  if (sliderRadius < 100) {
    sliderRadius +=2;
    smallRadius += 2;
  }
  }
  
  // the middle slider changes the radius of the large circle on the inside
  
   if (pmouseX > mouseX && mouseX >= sliderRadiusBig && mouseX < sliderRadiusBig + 10 
       && mouseY > 150 && mouseY < 160) {
   fill(255);
   rect(10, 150, 100, 10);
   noFill();
   if (sliderRadiusBig > 10) {
     sliderRadiusBig -= 2;
     smallRadius -= 2;
   }
  } else if (pmouseX < mouseX && mouseX >= sliderRadiusBig && mouseX < sliderRadiusBig + 10 
   && mouseY > 150 && mouseY < 160) {
   fill(255);
   rect(10, 150, 100, 10);
   noFill();
   if (sliderRadiusBig < 100) {
     sliderRadiusBig +=2;
     smallRadius += 2;
   }
  }
 
  if (pmouseX > mouseX && mouseX >= sliderTheta && mouseX < sliderTheta + 10 
       && mouseY > 50 && mouseY < 60) {
   fill(255);
   rect(10, 50, 100, 10);
   noFill();
   if (sliderTheta > 10) {
     sliderTheta -= 2;
     theta -= 2;
   }
  } else if (pmouseX < mouseX && mouseX >= sliderTheta && mouseX < sliderTheta + 10 
   && mouseY > 50 && mouseY < 60) {
   fill(255);
   rect(10, 50, 100, 10);
   noFill();
   if (sliderTheta < 100) {
     sliderTheta +=2;
     theta += 2;
   }
  }
  
  
} 

void mousePressed() {
  if (mouseX > 10 && mouseX < 70 && mouseY > 200 && mouseY < 220) {
    background(255);
  }
}