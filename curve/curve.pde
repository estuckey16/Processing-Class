// Project: Epicycloid
// WebApps:2016:2ndSemester:25Feb
// Ellie Stuckey
// This project uses triangles to create an epicycloid

// Global Variables for this project should include the radius of the small circle, 

// Global Constants for height and width because they don't update unless they are in the draw loop...yay....
float WIDTH = 600;
float HEIGHT = 600;


// the radius of the small circle that rotates outside of the larger circle and its clone 
float smallRadius = 30;    
float smallRadiusClone = smallRadius;

// the radius of the larger circle on the inside and its clone
float bigRadius = WIDTH/16;    // Radius of the larger circle
float bigRadiusClone = bigRadius;

// theta that the triangle starts at. Essentially the x value of the equation
float theta = 0;        // Value of the angle
float thetaClone = theta;

// the amount that theta changes by when it changes. Essentially more or less triangles
float deltaTheta = (PI/50);

// height of the triangle based on the radius of the small circle and its clone
float h = smallRadius * 2;    // if based upon the length of the side the formula would be sqrt((sideLength*sideLength) - (sideLength/2 * sideLength/2))
float hClone = h;

// amount that the matrix is rotated by
float rotator = 0;   

// Default position for the slider for the small radius
float sliderRadius = 50;
float sliderRadiusClone = sliderRadius;

// Default position for the slider for the large radius
float sliderRadiusBig = 50;
float sliderRadiusBigClone = sliderRadiusBig;

// Default position for the slider for the theta value
float sliderTheta = 50;
float sliderThetaClone = sliderTheta;

// controls the running of the code
boolean runMe = false;

void setup() {
  size(600, 600);
  background(255);
  stroke(0, 0, 0, 50);
}


void draw() {

  // This section draws all of the sliders and buttons
  fill(0);
  text("Small Radius", 10, 75);
  noFill();
  rect(10, 80, 100, 10);
  rect(sliderRadius, 80, 10, 10);

  fill(0);
  text("Big Radius", 10, 105);
  noFill();
  rect(10, 110, 100, 10);
  rect(sliderRadiusBig, 110, 10, 10);

  fill(0);
  text("Theta", 10, 45);
  noFill();
  rect(10, 50, 100, 10);
  rect(sliderTheta, 50, 10, 10);

  fill(0);
  text("Clear", 20, 145);
  noFill();
  rect(10, 130, 50, 20);

  fill(0);
  text("Start", 20, 175);
  noFill();
  rect(10, 160, 50, 20);

  fill(0);
  text("Stop", 20, 205);
  noFill();
  rect(10, 190, 50, 20);

  fill(0);
  text("Reset", 20, 235);
  noFill();
  rect(10, 220, 50, 20);

  // if the start button is pressed, this code will run
  if (runMe == true) {
    
    // Grabs a random number for the transparency of the triangle
    float transparancy = random(1, 100);

    stroke(random(1, 256), random(1, 256), random(1, 256), transparancy);

    // Move the origin to the center of the canvas
    pushMatrix();
    translate(WIDTH/2, HEIGHT/2);

    // Draw a large circle the size of the screen
    noFill();
   
    // Calculation for the value of x and y (the center of the triangle)
    float xValue = (bigRadius + smallRadius) * cos(theta) - smallRadius * cos(((bigRadius/smallRadius) - 1) * theta);
    float yValue = (bigRadius + smallRadius) * sin(theta) - smallRadius * sin(((bigRadius/smallRadius) - 1) * theta);

    // adds another matrix on top of the translated one that puts the center at the given x and y value to rotate and draw the triangle correctly
    pushMatrix();
    translate(xValue, yValue);
    rotate(rotator);

    
    // derived formula to automatically determine the corners of a triangle given the center
    triangle(0, 0 - ((2.0/3.0)*h), 0 + ((sqrt(1.0/3.0)) * h), 0 + ((1.0/3.0) * h), 0 - ((sqrt(1.0/3.0)) * h), 0 + ((1.0/3.0) * h));
    

    popMatrix();

    noFill();
    
    // increments the values for the next run
    theta += deltaTheta;
    rotator += PI / 20;

    if (rotator >= TWO_PI) {
      rotator = 0;
    }

    popMatrix();
  }
}


// Click and Drag Interactivity section
void mouseDragged() {

  // Changes values based upon where the mouse is as it is pressed and dragged across the screen. Changes "constant" values in the equation

  // the middle slider changes the radius of the small circle on the outside
  if (pmouseX > mouseX && mouseX >= sliderRadius && mouseX < sliderRadius + 10 
    && mouseY > 80 && mouseY < 90) {
    fill(255);
    rect(10, 80, 100, 10);
    noFill();
    if (sliderRadius > 10) {
      sliderRadius -= 2;
      smallRadius -= 2;
    }
  } else if (pmouseX < mouseX && mouseX >= sliderRadius && mouseX < sliderRadius + 10 
    && mouseY > 80 && mouseY < 90) {
    fill(255);
    rect(10, 80, 100, 10);
    noFill();
    if (sliderRadius < 100) {
      sliderRadius +=2;
      smallRadius += 2;
    }
  }

  // the bottom slider changes the radius of the large circle on the inside

  if (pmouseX > mouseX && mouseX >= sliderRadiusBig && mouseX < sliderRadiusBig + 10 
    && mouseY > 110 && mouseY < 120) {
    fill(255);
    rect(10, 110, 100, 10);
    noFill();
    if (sliderRadiusBig > 10) {
      sliderRadiusBig -= 2;
      smallRadius -= 2;
    }
  } else if (pmouseX < mouseX && mouseX >= sliderRadiusBig && mouseX < sliderRadiusBig + 10 
    && mouseY > 110 && mouseY < 120) {
    fill(255);
    rect(10, 110, 100, 10);
    noFill();
    if (sliderRadiusBig < 100) {
      sliderRadiusBig +=2;
      smallRadius += 2;
    }
  }

  // The top slider changes the original theta
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


// Mouse Click Interactivity section
void mousePressed() {

  // Controls the clear button
  if (mouseX > 10 && mouseX < 70 && mouseY > 130 && mouseY < 150) {

    // Clears the screen, but continues to run the triangles, assuming the code was originally started
    background(255);
  }

  // Controls the Start button
  if (mouseX > 10 && mouseX < 70 && mouseY > 160 && mouseY < 180) {

    // Starts running the triangle code
    runMe = true;
  }

  // Controls the Stop button
  if (mouseX > 10 && mouseX < 70 && mouseY > 190 && mouseY < 210) {

    // Stops running the triangle curve but keeps it on the screen
    runMe = false;
  }

  // Controls the reset button
  if (mouseX > 10 && mouseX < 70 && mouseY > 220 && mouseY < 240) {

    // Stops running the triangles
    runMe = false;

    // Clears the screen since all values reset
    background(255);

    // Reset all changed values to their default values using copy of the original value
    sliderRadius = sliderRadiusClone;
    sliderRadiusBig = sliderRadiusBigClone;
    sliderTheta = sliderThetaClone;

    smallRadius = smallRadiusClone;
    bigRadius = bigRadiusClone;
    theta = thetaClone;
    h = hClone;
  }
}