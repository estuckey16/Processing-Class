// Project: Epicycloid
// WebApps:2016:2ndSemester:25Feb
// Ellie Stuckey
// This project uses triangles to create an epicycloid

// Project: Spirograph
// WebApps:2016:2ndSemester:23Feb
// Ellie Stuckey
// This project will draw a spirograph given a floating point
float WIDTH = 600;
float HEIGHT = 600;
void setup() {
 size(600, 600);
 background(255);
 stroke(0, 0, 0, 50);
 frameRate(20);
}

// Global Variables for this project should include the radius of the small circle, 
// the radius of the large circle, 

float smallRadius = 40;    // Radius of the smaller cirlce
float bigRadius = WIDTH/8;    // Radius of the larger circle
float theta = 0;        // Value of the angle
float deltaTheta = (PI/100);
float deltaCoeff = (60);
float sideLength = 40;
float h = sqrt((sideLength*sideLength) - (sideLength/2 * sideLength/2));
float rotator = 0;
float transparancy = random(1, 100);


void draw() {
  stroke(0, 0, 0, transparancy);

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


triangle(0, 0 - ((2.0/3.0)*h), 0 + ((sqrt(1.0/3.0)) * h), 0 + ((1.0/3.0) * h), 0 - ((sqrt(1.0/3.0)) * h), 0 + ((1.0/3.0) * h));
ellipse(xValue, yValue, 4, 4);

popMatrix();

 fill(0);
 //text("hello", xValue + smallRadius, yValue + smallRadius);
 noFill();
 theta += deltaTheta;
 rotator += PI / 20;
 
 if (rotator >= TWO_PI){
   rotator = 0;
 }
 
 if(theta > 5 * deltaCoeff * PI){
   background(255);
   //stroke(random(1, 256), random(1, 256), random(1, 256));
   theta = 0;
 }
 transparancy = random(1, 100);
 popMatrix();
}