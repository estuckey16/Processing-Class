// Project: Spirograph
// WebApps:2016:2ndSemester:23Feb
// Ellie Stuckey
// This project will draw a spirograph given a floating point

void setup() {
 size(500, 500);
 background(255);
 stroke(random(1, 256), random(1, 256), random(1, 256));
}

// Global Variables for this project should include the radius of the small circle, 
// the radius of the large circle, 

float smallRadius = 60;    // Radius of the smaller cirlce
float bigRadius = width/2;    // Radius of the larger circle
float theta = 0;        // Value of the angle
float deltaTheta = (3 * PI/20);
float deltaCoeff = (6);



void draw() {

 // Move the origin to the center of the canvas
 pushMatrix();
 translate(width/2, height/2);
 
 // Draw a large circle the size of the screen
 noFill();
 //ellipse(0, 0, width, height);
 
 float xValue = (bigRadius - smallRadius) * cos(theta) + smallRadius * cos(((bigRadius/smallRadius) - 1) * theta);
 float yValue = (bigRadius - smallRadius) * sin(theta) - smallRadius * sin(((bigRadius/smallRadius) - 1) * theta);
 
 ellipse(xValue, yValue, smallRadius * 2, smallRadius * 2);
 fill(0);
 text("hello", xValue + smallRadius, yValue + smallRadius);
 noFill();
 theta += deltaTheta;
 
 if(theta > 5 * deltaCoeff * PI){
   background(255);
   stroke(random(1, 256), random(1, 256), random(1, 256));
   theta = 0;
 }
 
 popMatrix();
}