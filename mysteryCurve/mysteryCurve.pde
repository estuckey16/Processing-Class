//Project: Mystery Curve
// WebApps:2016:2ndSemester:23Feb
// Ellie Stuckey
// This code creates a mystery curve

void setup() {
  size(600, 600);
  strokeWeight(.5);
  }

// Global variables go here

// Creates a random x coordinate for Point P1
float randomX1 = 200; 
//random(-width/2, width/2);  
// Creates a random y coordinate for Point P1
float randomY1 = 200;
//random(-height/2, height/2);
// Creates a random x coordinate for Point P2
float randomX2 = 450;
//random(-width/2, width/2);
// Creates a random y coordinate for Point P2
float randomY2 = 250;
//random(-height/2, height/2);


// Creates a random y coordinate for the beginning point of Line 1
float line1Y1 = random(-height/4, 0);
// Creates a random y coordinate for the ending point of Line 1
float line1Y2 = random(0, height/4);

// Creates a random y coordinate for the beginning point of Line 2
float line2Y1 = random(0, height/4);
// Creates a random y coordinate for the ending point of Line 2
float line2Y2 = random(-height/4, 0);

  // Calculates the slope of the first randomly generated line
  float slopeRandom1 = (line1Y1 - line1Y2) / (width/2 - (-width/2));
  // Calcuates the slope of the second randomly generated line
  float slopeRandom2 = (line2Y1 - line2Y2) / (-width/2 - (width/2));

  // Calculates the y-intercept of the first randomly generated line
  float yInterceptRandom1 = line1Y1 - (slopeRandom1 * (-width/2));
  // Calculates the y-intercept of the second randomly generated line
  float yInterceptRandom2 = line2Y1 - (slopeRandom2 * (width/2));

  // creates a floating point for x on Line 1
  float xCounter = -width/2;
  // Assigns a value of y for the point on Line 1 based on the x value
  float yCounter = (slopeRandom1 * xCounter) + yInterceptRandom1;

  float xCounterVariable = -width/2;
  float yCounterVariable = (slopeRandom1 * xCounterVariable) + yInterceptRandom1;


void draw() {
  pushMatrix();
  translate(width/2, height/2);
  
  // Get the distance between the two randomly generated points
  float distance = sqrt(((randomX1 + randomX2) * (randomX1 + randomX2)) + ((randomY1 + randomY2) * (randomY1 + randomY2)));
    
  for (int index = -width; index <= width; index++){
    if (sqrt((distance * distance) - ((xCounterVariable - (xCounter)) * (xCounterVariable - (xCounter)))) + yCounter
    == (slopeRandom2 * xCounterVariable) + yInterceptRandom2) {
      yCounterVariable = sqrt((distance * distance) - ((xCounterVariable - (xCounter)) * (xCounterVariable - (xCounter)))) + yCounter;
      break;
    }
    else if (-sqrt((distance * distance) - ((xCounterVariable - (xCounter)) * (xCounterVariable - (xCounter)))) + yCounter
    == (slopeRandom2 * xCounterVariable) + yInterceptRandom2){
      yCounterVariable = -sqrt((distance * distance) - ((xCounterVariable - (xCounter)) * (xCounterVariable - (xCounter)))) + yCounter;
      break;
    }
    else {
      xCounterVariable++;
    }
           
  }
  
  
  float midX = (xCounter + randomX1) / 2;                          // Gets the x coordinate of the midpoint between the two lines
  float midY = (yCounter + randomY1) / 2;                          // Gets the y coordinate of the midpoint between the two lines
  
  float midpointX2 = (xCounterVariable + randomX2) / 2;                          // Gets the x coordinate of the midpoint between the two lines
  float midpointY2 = (yCounterVariable + randomY2) / 2;                          // Gets the y coordinate of the midpoint between the two lines
  
  float slope = ((midY - midpointY2)/(midX - midpointX2));    // The slope of the line perpendicular to the line between point R and point P
  float b1 = midY - (slope * midX);                                // Calculates the y-intercept of the line
  float b2 = (slope * width) + b1;                                 // Calculates the y value at x = width
  float b3 = (slope * -width) + b1;                                // Calculate the y value for the point at -width
  line(-width, b3, width, b2);                                     // Draws the line between the two points
  
  
  //float slope2 = -((xCounterVariable - randomX2)/(yCounterVariable - randomY2));    // The slope of the line perpendicular to the line between point R and point P
  //float yint = midpointY2 - (slope * midpointX2);                                // Calculates the y-intercept of the line
  //float y2 = (slope2 * width) + yint;                                 // Calculates the y value at x = width
  //float y1 = (slope2 * -width) + yint;                                // Calculate the y value for the point at -width
  //line(-width, y1, width, y2);                                     // Draws the line between the two points
  
  
  ellipse(randomX1, randomY1, 10, 10);
  ellipse(randomX2, randomY2, 10, 10);
  
  line(-width/2, line1Y1, width/2, line1Y2);
  line(-width/2, line2Y1, width/2, line2Y2);
  
  xCounter++;
  yCounter = (slopeRandom1 * xCounter) + yInterceptRandom1;
  xCounterVariable = -width/2;
  yCounterVariable = (slopeRandom2 * xCounterVariable) + yInterceptRandom2;
  
  popMatrix();
  
}