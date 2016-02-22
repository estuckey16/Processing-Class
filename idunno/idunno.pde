void setup() {
 size(600, 600);
 background(255);
}

boolean run = true;
float r = 50; //radius

float diameter = r*2;              // Diameter of point P
int numLines = 20;
float delta = 2;                // Number by which the x increases between draw loops
float x2 = 0;                  // x2 starts at zero
float pX = -r;
float y2 = sqrt((r * r) - (x2 * x2));      // calculates the y value for the initial point

void draw() {
  
  if (
 
  pushMatrix();
  translate(width/2, height/2);    // Moves the matrix to the center of the screen
  strokeWeight(1);
  
  
 
  
  float midX = (x2 - x) / 2;    // Gets the x coordinate of the midpoint between the two lines
  float midY = (y2 - y) / 2;    // Gets the y coordinate of the midpoint
  float slope = -((x2 - x)/(y2 - y));    // The slope of the line perpendicular to the line between point R and point P
  float b1 = midY - (slope * midX);    // Calculates the y intercept
  float b2 = (slope * width) + b1;      // calculates the y value for the point at width
  float b3 = (slope * -width) + b1;      // Calculate the y value for th point at -width
  if (x2 >= r+1){
  line(-width, b3, width, b2);          // If the x2 is greater than the radius, draw the line
  }
   
    // Changes the x value
  if (x2 == diameter || x2 == -diameter) {  
    pX = -pX;
  }
  if (pX == r) {
    x2 -= delta;
  }
  if (pX == -r){
    x2 += delta;
  }

  y2 = sqrt(abs(((r * r) - (x2 * x2))));
  if(((r*r) - (x2 *x2))<0){
    y2 = y2*-1;
  }
  
  if(x2 > width){
    background(255);
    stroke(random(256), random(256), random(256));
    x2 = 0;
    
  }

  popMatrix();
  
}